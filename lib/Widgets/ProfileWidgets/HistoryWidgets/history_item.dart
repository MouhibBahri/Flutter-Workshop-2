import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:Flutter_Workshop_2/Data/app_colors.dart';

import 'package:Flutter_Workshop_2/Model/history_model.dart';

class HistoryItem extends StatelessWidget {
  HistoryItem(this.model, {super.key});
  final HistoryModel model;
  final formatter = DateFormat('yyyy/MM/dd - HH:mm:ss');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      //height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 161, 191, 243),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              formatter.format(model.date),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Text(
                'Transaction',
                style: TextStyle(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Text(
                'N° ${model.id}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Divider(
            thickness: 0.5,
            height: 1,
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                'Service',
                style: TextStyle(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Text(
                'Transaction to ${model.recipientName}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
