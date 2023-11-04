import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: "assets/penguin.png", title: "Example Title 1", price: 100),
      CollectionModel(imagePath: "assets/penguin.png", title: "Example Title 2", price: 200),
      CollectionModel(imagePath: "assets/penguin.png", title: "Example Title 3", price: 300),
      CollectionModel(imagePath: "assets/penguin.png", title: "Example Title 4", price: 400),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Card(
              child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Expanded(
                  child: Image.asset(
                    _items[index].imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_items[index].title),
                    Text(_items[index].price.toString()),
                  ],
                ),
              ]),
            ),
          ));
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
