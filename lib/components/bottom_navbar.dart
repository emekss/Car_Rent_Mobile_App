import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        Icon(Icons.home),
        Icon(Icons.car_repair),
        Icon(Icons.add),
        Icon(Icons.message_rounded),
        Icon(Icons.person_2_rounded)
      ],
    );
  }
}
