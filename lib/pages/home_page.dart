import 'package:easy_parents/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                              'https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-1/385775012_837142725081326_7547008717405590601_n.jpg?stp=dst-jpg_p200x200&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEx7--6T85NSTat-0P50k2q-JU0hEEM3XD4lTSEQQzdcIy4Zu3wqKGTU2G4epw4RSMdUmHxNwJSTSBqPNfBPIDr&_nc_ohc=Ps3BRGGKgtIQ7kNvgFS39jK&_nc_ht=scontent.fdac24-3.fna&oh=00_AYB_i5Fo78t9g1nRf6L84UNmm7Xoro5GnO4ggGUmGbcM4Q&oe=6649C497',
                              width: 50, // Adjust the width as needed
                              height: 50, // Adjust the height as needed
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
                              'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/432004314_889063879685079_1981805842416257826_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHGfxSrUc8Tj8swJE91t5tw0WUjiT-CsXvRZSOJP4Kxe5NhTmYL6hQeDgI31GGqmR8375Be4zDUGDY7dX0DUQvG&_nc_ohc=j7Ifw2jZClsQ7kNvgEzYzrg&_nc_ht=scontent.fdac24-1.fna&oh=00_AYCfiA2yt894QZdtd96HtMQ4Y83_AptxluF06kl_un0COg&oe=6649AF90',
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
