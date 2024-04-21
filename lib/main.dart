

import 'package:easy_parents/pages/home_page.dart';
import 'package:easy_parents/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: "/home",
       routes: {
        "/": (context)=> LoginPage(),
        "/home": (context)=> HomePage(),
        "/login":(context)=> LoginPage(),

      },
    );
  }
}
