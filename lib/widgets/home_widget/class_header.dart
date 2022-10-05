// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class classHeader extends StatelessWidget {
  const classHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(
              Theme.of(context).brightness == Brightness.light
                  ? MyTheme.darkBluish
                  : Colors.white,
            )
            .make(),
        "Trending products".text.xl2.make()
      ],
    );
  }
}
