import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Data/app_colors.dart';
import 'package:restaurant/Data/profile_data.dart';
import 'package:restaurant/Model/profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() {
    return _ProfileWidget();
  }
}

class _ProfileWidget extends State<ProfileWidget> {
  final ProfileModel user = ProfileData().user;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.secondary,
              ),
              child: const FittedBox(
                fit: BoxFit.contain,
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  user.university,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.mail,
                      color: AppColors.secondary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      user.email,
                      style:
                          TextStyle(color: AppColors.secondary, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.card_membership,
                      color: AppColors.secondary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      user.number,
                      style:
                          TextStyle(color: AppColors.secondary, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Divider(
              color: AppColors.primary,
              thickness: 2,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Wallet',
                          style:
                              TextStyle(color: AppColors.primary, fontSize: 16),
                        ),
                        Text(
                          '7',
                          style: TextStyle(
                              color: AppColors.third,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.primary,
                    thickness: 2,
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Total expenses',
                          style:
                              TextStyle(color: AppColors.primary, fontSize: 16),
                        ),
                        Text(
                          '26',
                          style: TextStyle(
                              color: AppColors.third,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const FittedBox(
                  fit: BoxFit.cover,
                  child: Icon(
                    Icons.update,
                    size: 36,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.white,
                  //elevation: 6,
                ),
                label: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 70,
                  child: Text(
                    'History',
                    style: TextStyle(
                        fontSize: 32,
                        color: AppColors.primary,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const FittedBox(
                  fit: BoxFit.cover,
                  child: Icon(
                    CupertinoIcons.moon,
                    size: 36,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.white,
                  //elevation: 6,
                ),
                label: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 70,
                  child: Text(
                    'Dark mode',
                    style: TextStyle(
                        fontSize: 32,
                        color: AppColors.primary,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
