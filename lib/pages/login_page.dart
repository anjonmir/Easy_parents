import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/p.jpg",
              fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 20.0,
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "UserName"
                  ),
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Enter Passward",
                    labelText: "Password"
                  ),
                ),
                SizedBox(
                height: 40.0,
              ),
                  ElevatedButton(
                    child: Text("login"),
                    
                    style: TextButton.styleFrom(maximumSize: Size(150, 40)),
                    onPressed: () {
                    Navigator.pushNamed(context, MyRouts.homeRoute);
                    } ,
                  )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}