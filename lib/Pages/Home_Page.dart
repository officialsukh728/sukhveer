import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:learning2/catelog.dart';
import 'package:learning2/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  static String iniRoute = "/";

  static String homeRoute = "/home";

  HomePage({super.key});

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
    CatalogModel.item = List.from(productsData)
        .map<Item>((item) => Item.formMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CatalogModel.item.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.item[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name ?? "",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),
                        child: Image.network(item.image ?? ""),
                        footer: Text(item.price.toString() ?? ""),
                      ));
                },
                itemCount: CatalogModel.item.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
