import 'package:flutter/material.dart';

class Bouton extends StatefulWidget {
  const Bouton(this.label, this.action, {super.key});
  final String label;
  final void Function() action;
  @override
  State<Bouton> createState() {
    return _BoutonState(this.label, this.action);
  }
}

class _BoutonState extends State<Bouton> {
  _BoutonState(this.label, this.action);
  String label;
  void Function()? action;
  @override
  Widget build(context) {
    return TextButton(
      onPressed: action,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(150, 50)),
        backgroundColor: MaterialStateProperty.all(Colors.orange),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
