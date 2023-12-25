import 'package:flutter/material.dart';

class HomePageSplashContent extends StatelessWidget {
  const HomePageSplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Center(
          child: Image.asset(
            image!,
            height: 225,
            width: 300,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          text!,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}