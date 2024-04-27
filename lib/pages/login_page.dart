import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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


                    InkWell(
                      onTap: () {
                         Navigator.pushNamed(context, MyRouts.homeRoute);
                      },
                      child: Container(
                        width: 150,
                        height: 40,
                       
                        alignment: Alignment.center,
                        child: Text("Login",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                        decoration: BoxDecoration(
                           color: Color.fromRGBO(131, 8, 245, 0.612),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        
                      
                                ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}