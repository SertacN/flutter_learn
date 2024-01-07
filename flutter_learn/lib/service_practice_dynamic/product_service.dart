import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_learn/service_practice_dynamic/product_model.dart';

abstract class IProductService {
  Future<List<ProductModel>?> getProductItems();
}

class ProductService implements IProductService {
  final Dio _dio;

  ProductService()
      : _dio = Dio(BaseOptions(
            baseUrl: 'https://friendsapi.clbbaris.com/api/can/product/',
            headers: {"api-key": "0d114762-360e-450e-99e6-36137409977d"}));

  @override
  Future<List<ProductModel>?> getProductItems() async {
    final response = await _dio.get(ProductPath.getAll.name);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return [ProductModel.fromJson(data)];
      }
    }
    return null;
  }
}

enum ProductPath { getAll }
