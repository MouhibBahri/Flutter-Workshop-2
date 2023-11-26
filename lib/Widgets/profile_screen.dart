import 'package:flutter/material.dart';
import 'package:restaurant/Data/app_colors.dart';
import 'package:restaurant/Widgets/ProfileWidgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<StatefulWidget> {
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
            ),
          ),
        ],
        leading: BackButton(
          onPressed: () {},
          color: AppColors.secondary,
        ),
      ),
      body: ProfileWidget(),
    );
  }
}
