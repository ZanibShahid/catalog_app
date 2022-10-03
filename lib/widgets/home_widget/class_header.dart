// ignore_for_file: camel_case_types

import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class classHeader extends StatelessWidget {
  const classHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluish).make(),
        "Trending products".text.xl2.make()
      ],
    );
  }
}
