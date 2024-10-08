import 'package:flutter/material.dart';
import 'Bouton.dart';
import 'Widget_Login.dart';
import 'template.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(context) {
    return Template(
      message: "Enter your new password",
      personnelized_bouton: Bouton("Confirm", () {}),
      action_box: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetLogin(
              sufficon: Icon(Icons.remove_red_eye_outlined),
              text: "Type your new password"),
          SizedBox(
            height: 20,
          ),
          WidgetLogin(
              sufficon: Icon(Icons.remove_red_eye_outlined),
              text: "Confirm your new password"),
        ],
      ),
      ctx: context,
    );
  }
}
