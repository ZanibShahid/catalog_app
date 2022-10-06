// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

 
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();
            // ignore: no_leading_underscores_for_local_identifiers
            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).brightness == Brightness.light
                    ? MyTheme.darkBluish
                    : MyTheme.lightBluish),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
