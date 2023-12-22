import 'package:flutter/material.dart';
import 'package:learning2/Pages/Home_Page.dart';
import 'package:learning2/Pages/cart_puge.dart';
import 'package:learning2/Pages/login_page.dart';
import 'package:learning2/core/store.dart';
import 'package:learning2/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child:MyApp() ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: HomePage.iniRoute,
      routes: {
        HomePage.iniRoute: (context) => HomePage(),
        HomePage.homeRoute: (context) => HomePage(),
        LoginPage.loginRoute: (context) => LoginPage(),
        CartPage.cartRoute: (context) => CartPage(),
      },
    );
  }
}
