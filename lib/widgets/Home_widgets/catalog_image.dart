import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String Image;

  const CatalogImage({super.key, required this.Image});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: Image)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .wPCT(context: context, widthPCT:context.isMobile?40:20 );
  }
}
