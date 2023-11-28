import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 144, 180, 242),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant_menu,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Today\'s Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          _buildMenuListItem('Salade tunisienne'),
          const SizedBox(height: 20.0),
          _buildMenuListItem('Salade tunisienne'),
          const SizedBox(height: 20.0),
          _buildMenuListItem('Salade tunisienne'),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.thumb_up,
                color: Colors.white,
              ),
              const SizedBox(width: 5),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Rate today\'s menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuListItem(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 228, 249),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        leading: const Icon(
          Icons.flatware_outlined,
          color: Color.fromARGB(255, 102, 135, 194),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 102, 135, 194),
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
