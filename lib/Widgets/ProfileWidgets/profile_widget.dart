import 'package:flutter/material.dart';
import 'package:restaurant/Data/app_colors.dart';
import 'package:restaurant/Data/profile_data.dart';
import 'package:restaurant/Model/profile_model.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(color: AppColors.primary, fontSize: 16),
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
                VerticalDivider(
                  color: AppColors.primary,
                  thickness: 2,
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total expenses',
                      style: TextStyle(color: AppColors.primary, fontSize: 16),
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
              ],
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
