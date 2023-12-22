import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning2/Pages/cart_puge.dart';
import 'package:learning2/core/store.dart';
import 'package:learning2/models/Cart.dart';
import 'dart:convert';
import 'package:learning2/models/catelog.dart';
import 'package:learning2/widgets/Home_widgets/catalog_header.dart';
import 'package:learning2/widgets/Home_widgets/catalog_list.dart';
import 'package:learning2/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static String iniRoute = "/";
  static String homeRoute = "/home";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = " https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";

  @override
  void initState() {
    Future.delayed(Duration.zero, () => loadData());
    super.initState();
  }

  void loadData() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catelog.json");
    // final response = await http.get(Uri.parse(url));
    // final catalogjson = response.body;
     final decodedata = jsonDecode(catalogjson);
    var productsData = decodedata["products"];
    CatelogModel.item = List.from(productsData)
        .map<Item>((item) => Item.formMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (___, _, __) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, CartPage.cartRoute),
            backgroundColor: MyTheme.lightBluishColor,
            child: const Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            )).badge(
            color: Vx.red500,
            size: 22,
            count: _cart.items.length,
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
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
