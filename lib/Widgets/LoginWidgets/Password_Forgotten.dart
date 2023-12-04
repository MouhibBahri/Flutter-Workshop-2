import 'package:flutter/material.dart';
import 'Bouton.dart';
import 'CodeSent.dart';
import 'template.dart';
import 'Widget_Login.dart';

class PasswordForgotten extends StatefulWidget {
  const PasswordForgotten({super.key});
  @override
  State<PasswordForgotten> createState() {
    return _PasswordForgottenState();
  }
}

class _PasswordForgottenState extends State<PasswordForgotten> {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Template(
        action_box: const WidgetLogin(
          text: 'Email',
          icon: Icon(Icons.mail),
          type: TextInputType.emailAddress,
        ),
        message: "We will send you a code via email:",
        personnelized_bouton: Bouton(
          'Send me the code',
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CodeSent(),
              ),
            );
          },
        ),
        ctx: context,
      ),
    );
  }
}
