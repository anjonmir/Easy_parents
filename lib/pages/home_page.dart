
import 'package:easy_parents/utils/routes.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Here is our feature."),
              SizedBox(height: 20),
               // Add some spacing
                
         InkWell(
          
          onTap: () {
            Navigator.pushNamed(context, MyRouts.SplashRoute);
          },

           child: Container(
                        width: 200,
                        height: 30,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Color(0xFF230BF8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "our school name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
         ),




            ],
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
