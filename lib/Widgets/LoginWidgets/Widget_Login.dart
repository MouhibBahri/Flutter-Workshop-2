import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetLogin extends StatelessWidget {
  const WidgetLogin({
    super.key,
    this.icon,
    this.sufficon,
    required this.text,
    this.type,
  });
  final Icon? icon;
  final String? text;
  final TextInputType? type;
  final Icon? sufficon;

  @override
  Widget build(context) {
    final bool isPassword = (text!.toUpperCase()).contains("PASSWORD");
    return TextField(
      keyboardType: type != null ? type : TextInputType.text,
      textInputAction: text == "Password" || text == "Confirm your new password"
          ? TextInputAction.done
          : TextInputAction.next,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixIcon: sufficon,
        hintText: text,
        filled: true,
        fillColor: const Color.fromARGB(110, 187, 222, 251),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
    );
  }
}
