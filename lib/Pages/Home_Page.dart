import 'package:flutter/material.dart';
import 'package:learning2/catelog.dart';
import 'package:learning2/widgets/drawer.dart';
import 'package:learning2/widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const int day = 30;
    String name = "sukhveer";
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.Items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.Items[index],
          );
        },
      ),
    );
  }
}
