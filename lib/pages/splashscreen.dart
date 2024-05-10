import 'package:flutter/material.dart';
import 'package:easy_parents/pages/login_page.dart'; // Import LoginPage
// import 'package:easy_parents/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainScreen(); // Call method to navigate after 2 seconds
  }

  void _navigateToMainScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()), // Pass LoginPage widget here
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.jpg', // Replace with the path to your image
          fit: BoxFit.cover, // Cover the whole screen
        ),
      ),
    );
  }
}
