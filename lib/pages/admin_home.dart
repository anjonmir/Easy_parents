import 'package:easy_parents/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class AdminHome extends StatelessWidget {
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
                            "Admin",
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "admin demo account",
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          leading: Icon(CupertinoIcons.doc_person_fill),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Institute name",
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
                              return "User name cannot be empty";
                            } else {
                              return null;
                            }
                          },
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
                  _buildGridItem("Teacher List", 'https://example.com', Color.fromARGB(255, 79, 236, 171), 200, 50),
                  _buildGridItem("Staff List", 'https://example.com', Color.fromARGB(255, 238, 108, 69), 200, 50),
                  _buildGridItem("Student List", 'https://example.com', Color.fromARGB(255, 218, 214, 214), 200, 50),
                  _buildGridItem("Classes", 'https://example.com', Color.fromARGB(255, 238, 62, 214), 200, 50),
                  _buildGridItem("Marks Entry", 'https://example.com', Color.fromARGB(255, 218, 214, 214), 200, 50),
                  _buildGridItem("Expense Tracker", 'https://example.com', Color.fromARGB(255, 197, 233, 36), 200, 50),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with the desired action
                  }
                },
                child: Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
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
        drawer: MyDrawer(),
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
