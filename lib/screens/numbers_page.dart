import 'package:flutter/material.dart';

// NumbersPage shows a list of number items
class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final Numbers one = const Numbers(
    image: "assets/images/numbers/number_one.png",
    JapaneseName: "ichi",
    EnglishName: "one",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top of the page
      appBar: AppBar(
        title: const Text(
          "Numbers", // AppBar title
          style: TextStyle(
            color: Colors.white, // White color for title text
            fontSize: 18, // Font size 18
          ),
        ),
        backgroundColor: const Color(0xFF46322B), // Dark brown background color
        iconTheme: const IconThemeData(
          color: Colors.white, // White color for icons
          size: 22, // Icon size
        ),
      ),
      body: Container(
        height: 100,
        color: Colors.orange,
        child: Center(
          child: Row(
            children: [
              Container(
                color: const Color(0xffFFF6DC),
                child: Image.asset(one.image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      one.JapaneseName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      one.EnglishName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable widget for each number item
class NumberItem extends StatelessWidget {
  final String imagePath; // Path of the image
  final String jpText; // Japanese word
  final String enText; // English word

  const NumberItem({
    Key? key,
    required this.imagePath,
    required this.jpText,
    required this.enText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Height of the item
      color: Colors.orange, // Background color
      child: Row(
        children: [
          // Image container
          Container(
            color: const Color(0xffFFF6DC), // Light background for image
            child: Image.asset(imagePath), // Display image
          ),

          // Text section
          Padding(
            padding: const EdgeInsets.only(left: 16.0), // Space on the left
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align left
              children: [
                Text(
                  jpText, // Japanese word
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  enText, // English word
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Spacer pushes play icon to the right
          const Spacer(),

          // Play button icon
          Padding(
            padding: const EdgeInsets.only(right: 20.0), // Space on the right
            child: Icon(
              Icons.play_arrow, // Play icon
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Numbers {
  final String image;
  final String JapaneseName;
  final String EnglishName;

  const Numbers({
    required this.image,
    required this.JapaneseName,
    required this.EnglishName,
  });
}
