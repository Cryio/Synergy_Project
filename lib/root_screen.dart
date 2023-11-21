import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'login_screen.dart';

class RootScreen extends StatefulWidget {
  static const routeName = '/';

  const RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Future<bool> _userSessionFuture;

  @override
  void initState() {
    _userSessionFuture = _getUserSessionStatus();
    super.initState();
  }

  Future<bool> _getUserSessionStatus() async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }

  Widget _loadingScreen() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<bool>(
        future: _userSessionFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _loadingScreen();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error loading user session'),
            );
          } else {
            bool userLoginStatus = snapshot.data ?? false;
            return userLoginStatus ? const DashboardScreen() : const LoginPage(title: 'LoginPage');
          }
        },
      ),
    );
  }
}
