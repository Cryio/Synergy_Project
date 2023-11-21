import 'package:flutter/material.dart';
import 'dart:io';
import 'package:email_validator/email_validator.dart';
import 'dashboard_screen.dart';
import 'register_screen.dart';
import 'package:csv/csv.dart' as csv;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Map<String, String?> _credentials = {};

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  void _loadCredentials() async {
    try {
      String csvFilePath = 'D:/Compre prep/TestAPP/user_data.csv';
      File csvFile = File(csvFilePath);
      String csvString = await csvFile.readAsString();

      List<List<dynamic>> csvList = const csv.CsvToListConverter().convert(csvString);

      for (var entry in csvList.skip(1)) {
        if (entry.length >= 4) {
          _credentials[entry[2].toString()] = entry[3].toString();
        }
      }
      print("Credentials: $_credentials");
    } catch (e) {
      print("Error loading credentials: $e");
    }
  }

  void _loginPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String enteredEmail = _usernameController.text.trim();
      String enteredPassword = _passwordController.text.trim();

      String? storedPassword = _credentials[enteredEmail];

      print("Entered Email: $enteredEmail");
      print("Entered Password: $enteredPassword");
      print("Stored Password: $storedPassword");

      if (storedPassword != null &&
          storedPassword.toLowerCase() == enteredPassword.toLowerCase()) {
        print("Login successful");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DashboardScreen()),
        );
      } else {
        print("Login failed");
      }
    } else {
      print("Form validation failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                controller: _usernameController,
                validator: (value) =>
                EmailValidator.validate(value!)
                    ? null
                    : "Please enter a valid email",
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              CheckboxListTile(
                title: const Text("Remember me"),
                contentPadding: EdgeInsets.zero,
                value: rememberValue,
                activeColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
                onChanged: (newValue) {
                  setState(() {
                    rememberValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _loginPressed(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not registered yet?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const RegisterPage(title: 'Register UI'),
                        ),
                      );
                    },
                    child: const Text('Create an account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}