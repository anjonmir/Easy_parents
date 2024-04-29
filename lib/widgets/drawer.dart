import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const imageurl = "https://media.wired.com/photos/65e8827690df942d70c0b504/master/w_1600%2Cc_limit/gettyimages-693354890.jpg";
    return  Drawer
    (
      child: ListView
      (
        padding: EdgeInsets.zero,
        children: 
        [
          DrawerHeader
          (
            decoration: BoxDecoration
            (
              color: Color.fromRGBO(51, 153, 255, 1),
            ),
            padding: EdgeInsets.zero,
            
            child: UserAccountsDrawerHeader
            (
              
              accountName: Text("ariful"), 
              accountEmail: Text("ariful@hotmail.com"),
              currentAccountPicture: CircleAvatar
              (
                backgroundImage: NetworkImage("imageurl"),
              ),
              ),
          ),
          ListTile
          (
            onTap: () {
              print("it is home");
            },
            leading: Icon(CupertinoIcons.home),
            title: Text
            (
              "Home",
              textScaleFactor: 1.0,
            ),
            
          ),
           ListTile
          (
            leading: Icon
            (
              CupertinoIcons.mail
            ),
            title: Text
            (
              "email",
              textScaleFactor: 1.0,
            ),
            
          ),
           ListTile
          (
            leading: Icon
            (CupertinoIcons.profile_circled
            ),
            title: Text
            (
              "Profile",
              textScaleFactor: 1.0,
            ),
            
          ),
        ],
      ),
    );
  }
}