import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            categoryCard(
              "Coffee",
              "assets/coffeecup.png",
              isSelected: true,
            ), // ✅ green
            const SizedBox(width: 12),
            categoryCard("Iced", "assets/whiteicelogo.jpg"), // white
            const SizedBox(width: 12),
            categoryCard("Matcha", "assets/matcha.png"), // white
            const SizedBox(width: 12),
            categoryCard("Snacks", "assets/snacklogo.png"), // white
          ],
        ),
      ),
    );
  }

  Widget categoryCard(
    String title,
    String imagePath, {
    bool isSelected = false,
  }) {
    return Container(
      width: 90,
      height: 110,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 45, height: 45),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.green, //
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
