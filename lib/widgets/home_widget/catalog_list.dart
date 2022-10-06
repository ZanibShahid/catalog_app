// ignore_for_file: prefer_const_constructors

import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/home_detail_page.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog)));
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
    return VxBox(
        child: Row(
      children: [
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
                _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 8.0),
          ],
        )),
      ],
    )).color(context.cardColor).square(150).rounded.make().py(16);
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).brightness == Brightness.light
                    ? MyTheme.darkBluish
                    : MyTheme.lightBluish),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isAdded ? Icon(Icons.done) : "Add to cart".text.make());
  }
}
