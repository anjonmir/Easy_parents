import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  void _moveToHome(BuildContext context) 
  {
    if(_formkey.currentState!.validate()){
     Navigator.pushNamed(context, MyRouts.homeRoute);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("assets/images/123.png",
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
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return "Please user name can not be empty";
                      }
                      else
                      {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Passward",
                      labelText: "Password"
                    ),
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return"Passward can not be empty";
                        }
                      else if(value.length<4)
                      {
                        return "passward length must be atleast 4";
                      }
                      else
                      {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                  height: 40.0,
                ),
            
            
                      InkWell(
                        onTap: () => _moveToHome(context),
                          
                       
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
                             color: Color.fromRGBO(51, 153, 255, 1),
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
        ),
    );
  }
}