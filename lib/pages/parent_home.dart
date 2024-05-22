import 'package:easy_parents/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ParentHome extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 80, 80, 0.0),
                child: Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Parents",
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Parents demo account",
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          leading: Icon(CupertinoIcons.group_solid),
                        ),
                        Container(
                          padding: EdgeInsets.all(5), // Padding of 5px
                          child: Row(
                            children: [
                              Text(
                                "Main Menu",
                                textScaleFactor: 1.0,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(), // Pushes the following widgets to the right
                              Icon(
                                CupertinoIcons.bell_slash,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 3, // Number of columns
                          crossAxisSpacing: 50.0, // Spacing between columns
                          mainAxisSpacing: 50.0, // Spacing between rows
                          padding: EdgeInsets.all(10.0),
                          children: [
                            _student("Raj", 'https://example.com', Color.fromARGB(255, 79, 236, 171), 100, 50),
                            _student("Alamin", 'https://example.com', Color.fromARGB(255, 238, 108, 69), 100, 50),
                            _student("Mahafuz", 'https://example.com', Color.fromARGB(255, 218, 214, 214), 200, 50),
                            _student("CR(male)", 'https://example.com', Color.fromARGB(255, 238, 62, 214), 200, 50),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 50.0, // Spacing between columns
                mainAxisSpacing: 50.0, // Spacing between rows
                padding: EdgeInsets.all(20.0),
                children: [
                  _buildGridItem("Attendance", 'https://example.com', Color.fromARGB(255, 79, 236, 171), 200, 50),
                  _buildGridItem("Marks", 'https://example.com', Color.fromARGB(255, 238, 108, 69), 200, 50),
                  _buildGridItem("Bus time", 'https://example.com', Color.fromARGB(255, 218, 214, 214), 200, 50),
                  _buildGridItem("Homework", 'https://example.com', Color.fromARGB(255, 238, 62, 214), 200, 50),
                  _buildGridItem("Syllebus", 'https://example.com', Color.fromARGB(255, 218, 214, 214), 200, 50),
                  _buildGridItem("Notice", 'https://example.com', Color.fromARGB(255, 197, 233, 36), 200, 50),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }

  Widget _student(String title, String url, Color color, double width, double height) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        try {
          if (await canLaunch(uri.toString())) {
            await launch(uri.toString());
          } else {
            throw 'Could not launch $url';
          }
        } catch (e) {
          print('Error launching URL: $e');
        }
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, String url, Color color, double width, double height) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        try {
          if (await canLaunch(uri.toString())) {
            await launch(uri.toString());
          } else {
            throw 'Could not launch $url';
          }
        } catch (e) {
          print('Error launching URL: $e');
        }
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
