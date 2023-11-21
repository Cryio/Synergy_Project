import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'side_menu.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = "./dashboard";

  void _logoutTapped(BuildContext context) {
    print("Logging out user");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(title: 'LoginPage')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Hello Dashboard")),
          ElevatedButton(onPressed: () => _logoutTapped(context), child: Text("Logout")),
        ],
      ),
    );
  }
}
