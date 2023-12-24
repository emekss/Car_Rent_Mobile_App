import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
    this.title,
  }) : super(key: key);
  final String? text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Center(
          child: Image.asset(
            image!,
            height: 265,
            width: 300,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          text!,
          style: TextStyle(fontSize: 15, color: Colors.grey[600]),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
