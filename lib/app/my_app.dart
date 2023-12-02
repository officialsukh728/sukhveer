import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter learn",
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("App Bar"),
        ),
        body: Container(
          color: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
