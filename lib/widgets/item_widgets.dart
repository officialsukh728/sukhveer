import 'package:flutter/material.dart';
import 'package:learning2/catelog.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      :super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Image.network(item.image??""),
    );
  }
}
