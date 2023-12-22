import 'package:flutter/material.dart';
import 'package:learning2/models/Cart.dart';
import 'package:learning2/models/catelog.dart';
import 'package:learning2/widgets/Home_widgets/add_to_cart.dart';
import 'package:learning2/widgets/Home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(Image: catalog.image ?? "")),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name
                  .toString()
                  .text
                  .bold
                  .lg
                  .color(context.theme.dividerColor)
                  .make(),
              catalog.desc
                  .toString()
                  .text
                  .textStyle(context.captionStyle)
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  " \$${catalog.price}".toString().text.bold.xl.make(),
                  AddToCart(catalog: catalog)
                ],
              ).pOnly(right: 8),
            ],
          ),
        )
      ],
    )).color(context.cardColor).rounded.square(150).make().py16();
  }
}
