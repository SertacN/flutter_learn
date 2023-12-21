import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  // variables & instance
  late final List<CollectionModel> _item;
  final projectPadding = ProjectPadding();

// States
  @override
  void initState() {
    super.initState();
    _item = CollectionItems().items;
  }

// App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: projectPadding.horizontalPadding,
        child: ListView.builder(
          itemCount: _item.length,
          itemBuilder: (context, index) {
            return _CollectionCard(item: _item[index]);
          },
        ),
      ),
    );
  }
}

// Custom Widgets
class _CollectionCard extends StatelessWidget {
  _CollectionCard({required CollectionModel item}) : _model = item;
  final CollectionModel _model;
  final projectPadding = ProjectPadding();
  final projectMargin = ProjectMargin();
  final cardBorderStyle = CardBorderStyle();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: cardBorderStyle.roundedRectangleBorder,
      margin: projectMargin.bottomMargin,
      child: Column(children: [
        Padding(
          padding: projectPadding.verticalPadding,
          child: _CardImage(path: _model.imagePath, width: 300),
        ),
        Padding(
          padding: projectPadding.bottomPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                _model.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text('${_model.price} ETH')
            ],
          ),
        )
      ]),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.path, this.width});

  final String path;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
      width: width,
    );
  }
}

// Methods
class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  final cardImage = CardImages();
  CollectionItems() {
    items = [
      CollectionModel(imagePath: cardImage.collectionImage, title: 'Abstract Art 1', price: 3.14),
      CollectionModel(imagePath: cardImage.collectionImage, title: 'Abstract Art 2', price: 3.14),
      CollectionModel(imagePath: cardImage.collectionImage, title: 'Abstract Art 3', price: 3.14),
      CollectionModel(imagePath: cardImage.collectionImage, title: 'Abstract Art 4', price: 3.14),
    ];
  }
}

class CardImages {
  final String collectionImage = 'assets/png/collection_image.png';
}

class ProjectPadding {
  final verticalPadding = const EdgeInsets.symmetric(vertical: 10);
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  final bottomPadding = const EdgeInsets.only(bottom: 20);
}

class ProjectMargin {
  final bottomMargin = const EdgeInsets.only(bottom: 10);
}

class CardBorderStyle {
  final roundedRectangleBorder = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)));
}
