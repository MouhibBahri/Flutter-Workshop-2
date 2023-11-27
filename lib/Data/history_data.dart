import 'package:restaurant/Model/history_model.dart';

class HistoryData {
  var list = [
    HistoryModel(
        date: DateTime(2023, 1, 15, 10, 30, 45),
        id: '1',
        recipientName: 'John'),
    HistoryModel(
        date: DateTime(2023, 2, 20, 14, 15, 30),
        id: '2',
        recipientName: 'Alice'),
    HistoryModel(
        date: DateTime(2023, 3, 8, 8, 45, 20), id: '3', recipientName: 'Bob'),
    HistoryModel(
        date: DateTime(2023, 4, 5, 18, 0, 5), id: '4', recipientName: 'Emily'),
    HistoryModel(
        date: DateTime(2023, 5, 12, 12, 45, 55),
        id: '5',
        recipientName: 'David'),
    HistoryModel(
        date: DateTime(2023, 6, 28, 20, 20, 10),
        id: '6',
        recipientName: 'Sophia'),
    HistoryModel(
        date: DateTime(2023, 7, 14, 9, 30, 25),
        id: '7',
        recipientName: 'Olivia'),
    HistoryModel(
        date: DateTime(2023, 8, 2, 16, 15, 40),
        id: '8',
        recipientName: 'Daniel'),
    HistoryModel(
        date: DateTime(2023, 9, 19, 22, 55, 15),
        id: '9',
        recipientName: 'Grace'),
    HistoryModel(
        date: DateTime(2023, 10, 7, 7, 0, 0), id: '10', recipientName: 'Liam')
  ];
}
