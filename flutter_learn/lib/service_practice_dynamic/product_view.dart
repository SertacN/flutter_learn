import 'package:flutter/material.dart';
import 'package:flutter_learn/service_practice_dynamic/product_model.dart';
import 'package:flutter_learn/service_practice_dynamic/product_service.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  List<ProductModel>? _items;
  late final IProductService _productService;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _productService = ProductService();
    _fetchProduct();
  }

  Future<void> _fetchProduct() async {
    _changeLoading();
    _items = await _productService.getProductItems();
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _productCard(index);
        },
      ),
    );
  }

  Widget _productCard(int index) {
    List<ProductData>? dataList = _items?[index].data;
    if (dataList != null && dataList.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: dataList.map((data) {
          return ListTile(
            title: Text(data.title ?? 'No Title'),
            subtitle: Text(data.price?.toString() ?? 'No Price'),
          );
        }).toList(),
      );
    } else {
      return const ListTile(
        title: Text('No Data'),
        subtitle: Text('No Data'),
      );
    }
  }
}
