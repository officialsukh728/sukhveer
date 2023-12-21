import 'package:flutter/material.dart';
import 'package:learning2/models/catelog.dart';
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
                  const _AddTocart()
                ],
              ).pOnly(right: 8),
            ],
          ),
        )
      ],
    )).color(context.cardColor).rounded.square(150).make().py16();
  }
}

class _AddTocart extends StatefulWidget {
  const _AddTocart({
    super.key,
  });

  @override
  State<_AddTocart> createState() => _AddTocartState();
}

class _AddTocartState extends State<_AddTocart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(context.theme.bottomAppBarColor),
          shape: const MaterialStatePropertyAll(StadiumBorder())),
      child: isAdded
          ? const Icon(Icons.done)
          : "Add to cart".text.color(context.theme.disabledColor).make(),
    );
  }
}
