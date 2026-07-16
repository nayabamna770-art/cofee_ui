import 'package:cofee_ui/productlist.dart';
import 'package:cofee_ui/promo_banner.dart';
import 'package:flutter/material.dart';
import 'coffee_appbar.dart';
import 'category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              coffeeAppBar(),
              SizedBox(height: 20),
              CategoryList(),
              SizedBox(height: 20),
              PromoBanner(),
              SizedBox(height: 20),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
