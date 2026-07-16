import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 120,
                height: 120,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  //for add to cart+
                  Icons.add,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}