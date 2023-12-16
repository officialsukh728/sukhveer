import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning2/Pages/cart_puge.dart';
import 'dart:convert';
import 'package:learning2/catelog.dart';
import 'package:learning2/widgets/Home_widgets/catalog_header.dart';
import 'package:learning2/widgets/Home_widgets/catalog_list.dart';
import 'package:learning2/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  static String iniRoute = "/";
  static String homeRoute = "/home";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () => loadData());
    super.initState();
  }

  void loadData() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catelog.json");
    final decodedata = jsonDecode(catalogjson);
    var productsData = decodedata["products"];
    CatelogModel.item = List.from(productsData)
        .map<Item>((item) => Item.formMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, CartPage.cartRoute),
        backgroundColor: MyTheme.lightBluishColor,
        child: const Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatelogModel.item.isNotEmpty == true)
                const CatalogList().py(16).expand()
              else
                Center(child: const CircularProgressIndicator().py16()),
            ],
          ),
        ),
      ),
    );
  }
}
