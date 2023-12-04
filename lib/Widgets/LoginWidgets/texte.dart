import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texte extends StatelessWidget {
  const Texte(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.comfortaa(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.6,
      ),
    );
  }
}
