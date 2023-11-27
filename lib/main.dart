import 'package:Flutter_Workshop_2/Widgets/CalendarScreenWidgets/calendar_screen.dart';
import 'package:Flutter_Workshop_2/Widgets/ContributionMenuWidgets/menu_contribution_screen18.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Widgets/bottom_navigationbar.dart';
import 'package:Flutter_Workshop_2/Widgets/profile_screen.dart';

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
