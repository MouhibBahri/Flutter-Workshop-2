import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Flutter_Workshop_2/Bouton.dart';
import 'package:Flutter_Workshop_2/Reset_Password.dart';
import 'package:Flutter_Workshop_2/template.dart';

class CodeSent extends StatelessWidget {
  const CodeSent({super.key});

  @override
  Widget build(context) {
    return Template(
      action_box: const Row(
        children: [
          Expanded(
            child: Case(),
          ),
          Expanded(
            child: Case(),
          ),
          Expanded(
            child: Case(),
          ),
          Expanded(
            child: Case(),
          ),
          Expanded(
            child: Case(),
          ),
          Expanded(
            child: Case(etat: "final"),
          ),
        ],
      ),
      message: "Enter the code sent in the email",
      personnelized_bouton: Bouton(
        "Reset my password",
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ResetPassword(),
            ),
          );
        },
      ),
      ctx: context,
    );
  }
}

class Case extends StatelessWidget {
  const Case({super.key, this.etat});
  final String? etat;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: TextField(
        maxLength: 1,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textInputAction:
            etat == "final" ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          counterText: "",
          filled: true,
          fillColor: const Color.fromARGB(109, 143, 182, 214),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
