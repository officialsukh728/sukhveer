import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning2/core/store.dart';
import 'package:learning2/models/Cart.dart';
import 'package:learning2/models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation,RemoveMutation ]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatelogModel _catalog =(VxState.store as MyStore).catalog;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
             AddMutation(item: catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(context.theme.bottomAppBarColor),
            shape: const MaterialStatePropertyAll(StadiumBorder())),
        child: isInCart
            ? const Icon(Icons.done)
            : const Icon(CupertinoIcons.cart_fill_badge_plus));
  }
}
