import 'package:flutter/material.dart';

/// Widget to display each category
class Category extends StatelessWidget {
  // Variables for category text, color, and tap action
  final String text;
  final Color color;
  final VoidCallback? onTap;

  const Category(
    this.text,
    this.color, {
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Action when tapped
      child: Container(
        alignment: Alignment.centerLeft, // Align text to the left
        padding: const EdgeInsets.only(left: 16), // Padding from the left
        height: 65,
        width: double.infinity,
        color: color, // Background color of the category
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
