import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  static String cartRoute = "/cart";

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
          Placeholder().p(30).expand(),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}
class  CartTotal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10 ,
    )
  }
}
