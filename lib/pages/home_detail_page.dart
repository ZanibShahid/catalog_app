import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:catalog_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: const EdgeInsets.all(0),
          children: [
            "\$${catalog.price}".toString().text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            // ignore: deprecated_member_use
                            MaterialStateProperty.all(
                          Theme.of(context).brightness == Brightness.light
                              ? MyTheme.darkBluish
                              : MyTheme.lightBluish,
                        ),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.make())
                .wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.asset(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.cardColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      catalog.name
                          .toString()
                          .text
                          .xl2
                          .color(
                            Theme.of(context).brightness == Brightness.light
                                ? MyTheme.darkBluish
                                : Colors.white,
                          )
                          .bold
                          .make()
                          .pOnly(top: 50),
                      catalog.description
                          .toString()
                          .text
                          .lg
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Ut sadipscing sea amet magna sea sed vero dolor. Sed stet sit no diam gubergren, amet amet erat lorem voluptua consetetur ipsum, et clita ea lorem takimata stet magna tempor rebum diam, takimata rebum et sed invidunt, et rebum takimata est ut ipsum aliquyam. Accusam et ipsum sanctus erat stet.."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
