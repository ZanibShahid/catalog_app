// ignore_for_file: prefer_const_constructors

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/home_detail_page.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return !context.isMobile
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20.0),
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              final catalog = CatalogModel.items[index];
              return InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeDetailPage(catalog: catalog)));
                }),
                child: CatalogItem(
                  catalog: catalog,
                ),
              );
            })
        : ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              final catalog = CatalogModel.items[index];
              return InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeDetailPage(catalog: catalog)));
                }),
                child: CatalogItem(
                  catalog: catalog,
                ),
              );
            });
  }
}

class CatalogItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var children2 = [
      Hero(
        tag: Key(catalog.id.toString()),
        child: CatalogImage(image: catalog.image),
      ),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          catalog.name
              .toString()
              .text
              .lg
              .color(
                Theme.of(context).brightness == Brightness.light
                    ? MyTheme.darkBluish
                    : Colors.white,
              )
              .bold
              .make(),
          catalog.description
              .toString()
              .text
              .textStyle(context.captionStyle)
              .make(),
          10.heightBox,
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.all(0),
            children: [
              "\$${catalog.price}".toString().text.bold.xl.make(),
              AddToCart(catalog: catalog)
            ],
          ).pOnly(right: 8.0),
        ],
      ).p(context.isMobile ? 0 : 16)),
    ];
    return VxBox(
            child: context.isMobile
                ? Row(
                    children: children2,
                  )
                : Column(
                    children: children2,
                  ))
        .color(context.cardColor)
        .square(150)
        .rounded
        .make()
        .py(16);
  }
}
