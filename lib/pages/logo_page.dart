import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/body');
        },
        child: Image.asset(
          'assets/images/logo3.jpeg',
        ),
      ),
    ));
  }
}
