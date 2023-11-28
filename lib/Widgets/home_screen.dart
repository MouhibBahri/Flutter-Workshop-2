import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Widgets/HomeScreenWidgets/carousel.dart';
import 'package:Flutter_Workshop_2/Widgets/HomeScreenWidgets/menu.dart';
import 'package:Flutter_Workshop_2/Widgets/HomeScreenWidgets/qr_code.dart';
import 'package:Flutter_Workshop_2/Widgets/HomeScreenWidgets/rating.dart';
import 'package:Flutter_Workshop_2/Widgets/HomeScreenWidgets/wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const Icon(
              Icons.circle,
              color: Color.fromARGB(255, 3, 82, 146),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WalletWidget(),
            // CarouselWidget(
            //   items: [
            //     MenuWidget(),
            //     QRWidget(),
            //     RatingWidget(),
            //   ],
            // ),
            RatingWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Add',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
