import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'side_menu.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = "./dashboard";

  const DashboardScreen({Key? key}) : super(key: key);

  void _logoutTapped(BuildContext context) {
    print("Logging out user");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(title: 'LoginPage')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("Hello Dashboard")),
          ElevatedButton(onPressed: () => _logoutTapped(context), child: const Text("Logout")),
        ],
      ),
    );
  }
}
