import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  const CarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/gwagon7.avif',
              height: 250,
              width: 250,
            ),
            const Text(
              'Mercedes G wagon G63 -2023',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10),
            const Text('£15.00 / day',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
