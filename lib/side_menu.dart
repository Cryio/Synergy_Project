import 'package:flutter/material.dart';
import 'login_screen.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer'),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              print("Item 1");
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Navigator.pop(context);
              // Future.delayed(Duration(seconds: 3), (){
              print("Logging out to login screen");
              Navigator.popAndPushNamed(context, LoginPage.routeName);
              // });
            },
          ),
        ],
      ),
    );
  }
}
