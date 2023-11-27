import 'package:flutter/material.dart';
import 'package:restaurant/Data/history_data.dart';
import 'package:restaurant/Widgets/ProfileWidgets/HistoryWidgets/history_item.dart';

class HistoryWidget extends StatelessWidget {
  HistoryWidget({super.key});

  final transactions = HistoryData().list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
      itemBuilder: (context, index) => HistoryItem(transactions[index]),
      itemCount: transactions.length,
    );
  }
}
