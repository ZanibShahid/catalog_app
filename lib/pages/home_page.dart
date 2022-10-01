// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'dart:convert';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   // ignore: todo
  //   // TODO: implement initState
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
          child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: itemList[index],
          );
        },
      )),
      drawer: MyDrawer(),
    );
  }
}
