import 'package:flutter/material.dart';
import 'package:restaurant/Widgets/profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    ),
  );
}
