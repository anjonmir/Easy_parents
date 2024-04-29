import 'package:easy_parents/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Easy Parent')),
          backgroundColor: Colors.blue,
          
        ),
        body: Center(
          child: Text("Our easy parent apps"),
        ),
        drawer: MyDrawer(

        ),
      ),
    );
  }
}