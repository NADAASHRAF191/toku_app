import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/numbers_page.dart';

/// Main home page of the app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color of the page
      backgroundColor: const Color(0xffFEF6DB),

      // Top AppBar
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          "Toku App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Page content (main categories)
      body: Column(
        children: [
          Category(
            "Numbers",
            Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            "Family Members",
            Colors.green,
            onTap: () {
              print('Family Members category tapped');
            },
          ),
          Category(
            "Colors",
            Colors.purple,
            onTap: () {
              print('Colors category tapped');
            },
          ),
          Category(
            "Phrases",
            Colors.blue,
            onTap: () {
              print('Phrases category tapped');
            },
          ),
        ],
      ),
    );
  }
}
