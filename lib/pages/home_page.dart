import 'package:easy_parents/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Easy Parent')),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      const url = 'https://vu.edu.bd/';
                      try {
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } catch (e) {
                        print('Error launching URL: $e');
                      }
                    },
                    child: Container(
                      width: 150,
                      height: 210,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 214, 214),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Screenshot_15-5-2024_24549_.jpeg",
                              width: 176, // Adjust the width as needed
                              height: 180, // Adjust the height as needed
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Varendra University",
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
                    onTap: () async {
                      const url =
                          'https://en.wikipedia.org/wiki/Rajshahi_Collegiate_School';
                     try {
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } catch (e) {
                        print('Error launching URL: $e');
                      }
                    
                    },
                    child: Container(
                      width: 150,
                      height: 210,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 214, 214),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/en/0/0c/The_Logo_of_Rajshahi_Collegiate_School.jpeg',
                              width: 50, // Adjust the width as needed
                              height: 50, // Adjust the height as needed
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rajshahi Collegiate School",
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      const url =
                          'https://www.sohopathi.com/shimul-memorial-north-south-school/';
                      try {
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } catch (e) {
                        print('Error launching URL: $e');
                      }
                    },
                    child: Container(
                      width: 150,
                      height: 210,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 214, 214),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image.asset(
                              "assets/images/p.jpg",
                              width: 176, // Adjust the width as needed
                              height: 180, // Adjust the height as needed
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Shimul Memorial North South School and College, Rajshahi",
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
                    onTap: () async {
                      const url = 'http://www.rmscraj.edu.bd/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      width: 150,
                      height: 210,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 214, 214),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/bn/b/bb/%E0%A6%B0%E0%A6%BE%E0%A6%9C%E0%A6%B6%E0%A6%BE%E0%A6%B9%E0%A7%80_%E0%A6%B8%E0%A6%B0%E0%A6%95%E0%A6%BE%E0%A6%B0%E0%A6%BF_%E0%A6%AE%E0%A6%A1%E0%A7%87%E0%A6%B2_%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A7%81%E0%A6%B2_%E0%A6%8F%E0%A6%A8%E0%A7%8D%E0%A6%A1_%E0%A6%95%E0%A6%B2%E0%A7%87%E0%A6%9C%E0%A7%87%E0%A6%B0_%E0%A6%B2%E0%A7%8B%E0%A6%97%E0%A7%8B.png',
                              width: 50, // Adjust the width as needed
                              height: 50, // Adjust the height as needed
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rajshahi Government Model School & College",
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
            ],
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
