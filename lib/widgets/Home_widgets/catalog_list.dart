import 'package:flutter/material.dart';
import 'package:learning2/Pages/home_detail_page.dart';

import 'package:learning2/models/catelog.dart';
import 'package:learning2/widgets/Home_widgets/catalog_item.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return !context.isMobile ? GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      shrinkWrap: true,
      itemCount: CatelogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatelogModel.item[index];
        return InkWell(
          onTap: () =>
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog),
                ),
              ),
          child: CatalogItem(catalog: catalog),
        );
      },
    ):ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatelogModel.item[index];
        return InkWell(
          onTap: () =>
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog),
                ),
              ),
          child: CatalogItem(catalog: catalog),
        );
      },
    )
    ;
  }
}
