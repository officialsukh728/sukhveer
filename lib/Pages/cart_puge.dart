import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning2/models/catelog.dart';
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
          const CartList().p(30).expand(),
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
    final _cart = CatelogModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // "\$${_cart.totalPrice}"
          "\$${100}".text.xl5.color(context.theme.dividerColor).make(),
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

class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _Cart = CatelogModel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _Cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done_outline),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: Text(_Cart.items?[index].name ?? ""),
      ),
    );
  }
}
