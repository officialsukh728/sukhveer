import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning2/Pages/home_detall_puge.dart';

import 'package:learning2/catelog.dart';
import 'package:learning2/widgets/Home_widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatelogModel.item[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
