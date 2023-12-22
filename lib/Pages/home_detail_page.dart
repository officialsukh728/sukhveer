import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:learning2/models/catelog.dart';
import 'package:learning2/widgets/Home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  static const String homeDetailPage = "/homeDetailPage";
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            " \$${catalog.price}"
                .toString()
                .text
                .bold
                .xl4
                .color(Vx.red800)
                .make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: CachedNetworkImage(imageUrl: catalog.image ?? ""))
                .h32(context)
                .p4(),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.theme.cardColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name
                            .toString()
                            .text
                            .bold
                            .xl4
                            .color(context.theme.dividerColor)
                            .make(),
                        catalog.desc
                            .toString()
                            .text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox.py(3),
                        ''''   128 GB ROM15,49 cm (6.1 inch) Super Retina XDR Display
    12MP + 12MP + 12MP | 12MP Front Camera 
    A14 Bionic Chip with Next Generation Neural Engine Processor
    Ceramic Shield | Industry-leading IP68 Water Resistance
    LiDAR Scanner for Improved AR Experiences,Night Mode Portraits '''
                            .text
                            .textStyle(context.captionStyle)
                            .make(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
