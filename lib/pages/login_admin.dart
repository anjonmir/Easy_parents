import 'package:flutter/material.dart';
import 'package:easy_parents/utils/routes.dart';
import 'package:flutter/cupertino.dart';

class loginAdmin extends StatefulWidget {
  @override
  State<loginAdmin> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginAdmin> {
  final _formkey = GlobalKey<FormState>();

  void _moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.adminHome);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(51, 153, 255, 1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 80, 80, 0.0),
              child: Center(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(CupertinoIcons.question),
                      title: Text(
                        "I do not have an account yet",
                        textScaleFactor: 1.0,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.registerRoute);
                      },
                      child: Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 215, 219),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Create a new account",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 180, 40, 10),
              child: Container(
                width: 450,
                height: 500,
                color: Colors.deepPurple,
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Text("Login as",
                      style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.loginAdmin);
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 233, 160, 160),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.person_alt,
                                      color: Colors.black,
                                      size: 50,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Admin",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.loginParent);
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 218, 214, 214),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.person_3,
                                      color: Colors.black,
                                      size: 50,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Parents",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.loginStudent);
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 218, 214, 214),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.smiley,
                                      color: Colors.black,
                                      size: 50,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Student",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter User Name",
                                labelText: "UserName",
                                
                                border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.person),
                              suffixIcon: Icon(Icons.clear),
                              filled: true,
                              fillColor: Colors.grey[200],
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please user name can not be empty";
                                } else {
                                  return null;
                                }
                              },
                            ),
                             SizedBox(height: 20),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password",
                                
                                border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.clear),
                              filled: true,
                              fillColor: Colors.grey[200],
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password can not be empty";
                                } else if (value.length < 4) {
                                  return "Password length must be at least 4";
                                } else {
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
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(3, 73, 143, 0.363),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
