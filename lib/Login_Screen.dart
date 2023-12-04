import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Bouton.dart';
import 'package:Flutter_Workshop_2/Password_Forgotten.dart';
import 'Widget_Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void showErrorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  height: 200,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Logo',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                const WidgetLogin(icon: Icon(Icons.person), text: 'Username'),
                const SizedBox(height: 25),
                const WidgetLogin(icon: Icon(Icons.lock), text: 'Password'),
                const SizedBox(height: 50),
                Bouton('Login', () {
                  showErrorSnackbar(context, 'Please enter a valid login');
                }),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordForgotten(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(color: Color.fromARGB(255, 20, 54, 81)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
