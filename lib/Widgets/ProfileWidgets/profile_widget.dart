import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Data/app_colors.dart';
import 'package:Flutter_Workshop_2/Data/profile_data.dart';
import 'package:Flutter_Workshop_2/Model/profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget(this.toHistory, {super.key});

  final void Function(String) toHistory;
  @override
  State<ProfileWidget> createState() {
    return _ProfileWidget();
  }
}

class _ProfileWidget extends State<ProfileWidget> {
  final ProfileModel user = ProfileData().user;
  bool darkMode = false;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 8),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              width: 140,
              height: 140,
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
            const SizedBox(height: 22),
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
            const SizedBox(height: 52),
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
                              TextStyle(color: AppColors.primary, fontSize: 18),
                        ),
                        Text(
                          '7',
                          style: TextStyle(
                              color: AppColors.third,
                              fontWeight: FontWeight.w900,
                              fontSize: 42),
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
                              TextStyle(color: AppColors.primary, fontSize: 18),
                        ),
                        Text(
                          '26',
                          style: TextStyle(
                              color: AppColors.third,
                              fontWeight: FontWeight.w900,
                              fontSize: 42),
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
            const SizedBox(height: 52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton.icon(
                onPressed: () {
                  widget.toHistory('History');
                },
                icon: const FittedBox(
                  fit: BoxFit.cover,
                  child: Icon(
                    Icons.update,
                    size: 36,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  surfaceTintColor: Colors.white,
                  elevation: 6,
                ),
                label: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 60,
                  child: Text(
                    'History',
                    style: TextStyle(
                        fontSize: 28,
                        color: AppColors.primary,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  surfaceTintColor: Colors.white,
                  elevation: 6,
                ),
                label: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dark mode',
                        style: TextStyle(
                            fontSize: 28,
                            color: AppColors.primary,
                            fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                      Switch(
                        value: darkMode,
                        onChanged: (value) {
                          setState(() {
                            darkMode = value;
                          });
                        },
                        inactiveTrackColor: Colors.grey[200],
                        inactiveThumbColor: AppColors.secondary,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Text(
              'Made with ❤️',
              style: TextStyle(
                  fontSize: 18,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
