import 'package:flutter/material.dart';
import 'package:learning2/Pages/Home_Page.dart';
import 'package:learning2/Pages/login_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),

   routes: {
        "/":(context)=> const LoginPage(),
        "/home":(context)=> const HomePage(),
     "/Login":(context)=>const LoginPage(),
    },
    );
      }
}
