import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const CarTile(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 250,
              width: 250,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('4.5', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  '(120 review)',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(price,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
