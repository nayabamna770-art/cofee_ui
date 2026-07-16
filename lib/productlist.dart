import 'package:flutter/material.dart';
import 'product.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Coffee",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: const [
                ProductCard(
                  image: "assets/coffee01.jpg",
                  title: "Pumpkin Spice Latte",
                  subtitle: "Creamy Espresso",
                  price: "AED 20.00",
                ),
                ProductCard(
                  image: "assets/coffee2.jpg",
                  title: "Iced Matcha",
                  subtitle: "Fresh & Creamy",
                  price: "AED 18.00",
                ),
                ProductCard(
                  image: "assets/coffee3.jpg",
                  title: "Blueberry Cheesecake",
                  subtitle: "Perfect with Latte",
                  price: "AED 25.00",
                ),
                ProductCard(
                  image: "assets/coffee4.jpg",
                  title: "Pumpkin Latte",
                  subtitle: "Silky Steamed Milk",
                  price: "AED 20.00",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
