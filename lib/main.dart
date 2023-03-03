import 'package:flutter/material.dart';
import 'package:shop_app/pages/bottom_navbar.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/login_page.dart';

void main() {
  runApp(const SHOP_APP());
}

class SHOP_APP extends StatelessWidget {
  const SHOP_APP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Flutter Demo',
        // themeMode: ThemeMode.light,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        home: const BottomNavbarScreen(),
        routes: {
          // "/": ((context) => HomeScreen()),
          "/Login": (context) => LoginPage(),
        });
  }
}
