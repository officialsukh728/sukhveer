import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int day = 30;
    const String name = "Codepur";
    return Scaffold(
      appBar: AppBar(

        title: const Center(child: Text("Catalog App")),
      ),
      body: Center(
        child: Container(
          child: const Text("Walcome $day day  of flullter by $name "),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
