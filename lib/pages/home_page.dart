// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widget/catalog_list.dart';
import '../widgets/home_widget/class_header.dart';

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
    // final itemList = List.generate(
    //     CatalogModel.items.length, ((index) => CatalogModel.items[index]));
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? MyTheme.darkBluish
            : MyTheme.lightBluish,
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              classHeader(),
              // ignore: unnecessary_null_comparison
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator().centered().p16(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
