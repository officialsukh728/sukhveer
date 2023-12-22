import 'package:flutter/material.dart';
import 'package:learning2/core/store.dart';
import 'package:learning2/models/Cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  static String cartRoute = "/cart";

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: "Cart".text.center.color(context.theme.dividerColor).make()),
      ),
      body: Column(
        children: [
          CartList().p(30).expand(),
          const Divider(),
          const CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            mutations: const {RemoveMutation},
            builder: (BuildContext context, store, VxStatus? status) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.dividerColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.bottomAppBarColor)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet.".text.make(),
              ));
            },
            child: "Buy".text.make(),
          ).w32(context),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to Show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done_outline),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () => RemoveMutation(
                  item: _cart.items[index],
                ),
              ),
              title: Text(_cart.items[index].name ?? ""),
            ),
          );
  }
}
