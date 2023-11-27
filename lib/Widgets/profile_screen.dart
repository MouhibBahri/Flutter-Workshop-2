import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Data/app_colors.dart';
import 'package:Flutter_Workshop_2/Widgets/ProfileWidgets/history_widget.dart';
import 'package:Flutter_Workshop_2/Widgets/ProfileWidgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<StatefulWidget> {
  var currentScreen = 'ProfileScreen';

  void changePage(String screen) {
    setState(() {
      currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        actions: [
          IconButton(
            onPressed: () {}, //sign out

            icon: Icon(
              Icons.exit_to_app_sharp,
              color: AppColors.third,
              size: 36,
            ),
          ),
        ],
        title: currentScreen == 'ProfileScreen'
            ? const Text('')
            : Text(
                'History',
                style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            changePage('ProfileScreen');
          },
          color: AppColors.secondary,
          style: ButtonStyle(
            iconSize: MaterialStateProperty.all(36),
          ),
        ),
      ),
      body: currentScreen == 'ProfileScreen'
          ? ProfileWidget(changePage)
          : HistoryWidget(),
    );
  }
}
