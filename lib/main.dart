import 'package:easy_parents/pages/admin_home.dart';
import 'package:easy_parents/pages/auth_service.dart'; 
import 'package:easy_parents/pages/home_page.dart';
import 'package:easy_parents/pages/login_admin.dart';
import 'package:easy_parents/pages/login_page.dart';
import 'package:easy_parents/pages/login_parent.dart';
import 'package:easy_parents/pages/login_student.dart';
import 'package:easy_parents/pages/parent_home.dart';
import 'package:easy_parents/pages/register.dart';
import 'package:easy_parents/pages/splashscreen.dart';
import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Parent',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: MyRoutes.splashRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.splashRoute: (context) => SplashScreen(),
        MyRoutes.loginAdmin: (context) => loginAdmin(),
        MyRoutes.loginParent: (context) => LoginParent(),
        MyRoutes.loginStudent: (context) => LoginStudent(),
        MyRoutes.registerRoute: (context) => Register(),
        MyRoutes.parentHome: (context) => ParentHome(),
        MyRoutes.adminHome: (context) => AdminHome(),
      },
    );
  }
}
