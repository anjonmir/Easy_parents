

import 'package:easy_parents/pages/home_page.dart';
import 'package:easy_parents/pages/login_page.dart';
import 'package:easy_parents/pages/splashscreen.dart';
import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
       
      ),
        
      
      initialRoute: MyRouts.homeRoute,
       routes: {
        "/": (context)=> LoginPage(),
        MyRouts.homeRoute: (context)=> HomePage(),
       MyRouts.loginRoute:(context)=> LoginPage(),
       MyRouts.SplashRoute:(context) => SplashScreen(),

      },
    );
  }
}



