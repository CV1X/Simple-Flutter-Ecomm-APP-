import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 25,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.shop,
              text: 'Shop',
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              textSize: 18,
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              textSize: 18,
            ),
          ]),
    );
  }
}
