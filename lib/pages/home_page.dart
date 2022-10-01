// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  // loadData() async {
  //   final catalogjson =
  //       await rootBundle.loadString("assets/files/catalog.json");
  //   final decodeData = jsonDecode(catalogjson);
  //   var productData = decodeData["products"];
  // }

  @override
  Widget build(BuildContext context) {
    final itemList = List.generate(
        CatalogModel.items.length, ((index) => CatalogModel.items[index]));
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Catalogue App")),
      ),
      body: Center(
          // ignore: unnecessary_null_comparison
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    final items = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      child: GridTile(
                        header: Container(
                            decoration: BoxDecoration(color: Colors.deepPurple),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              items.name,
                              style: TextStyle(color: Colors.white),
                            )),
                        child: Image.network(items.image),
                        footer: Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              items.price.toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    );
                  },
                  itemCount: CatalogModel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
    );
  }
}
