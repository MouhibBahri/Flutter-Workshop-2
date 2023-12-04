import 'package:flutter/material.dart';
import 'package:Flutter_Workshop_2/Model/menu.dart';
import 'package:Flutter_Workshop_2/Widgets/LoginWidgets/bottom_navigationbar.dart';

class MenuContributionScreen extends StatefulWidget {
  const MenuContributionScreen({super.key});

  @override
  State<MenuContributionScreen> createState() {
    return _MenuContributionScreenState();
  }
}

Widget buildCardContainer(BuildContext context, String text, Icon icon) {
  return SizedBox(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(
                icon.icon,
                color: Colors.blue[800],
              ),
              const SizedBox(width: 16.0),
              Text(
                text,
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ],
          )),
    ),
  );
}

String getCourseName(dynamic course) {
  switch (course) {
    case Entree.SaladeMechouia:
      return 'Salade Mechouia';
    case Entree.SaladeRusse:
      return 'Salade Russe';
    case Entree.SaladeTunisienne:
      return 'Salade Tunisienne';
    default:
      return '';
  }
}

class _MenuContributionScreenState extends State<MenuContributionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.blue[700],
              size: 48,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.receipt_long_rounded,
                color: Colors.amber,
                size: 48,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Main Course",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Entree",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(27),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4.0),
                for (Entree entree in Entree.values)
                  buildCardContainer(
                    context,
                    getCourseName(entree),
                    const Icon(Icons.restaurant_outlined),
                  ),
                const SizedBox(height: 4.0),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(50),
              ),
              width: 100,
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
