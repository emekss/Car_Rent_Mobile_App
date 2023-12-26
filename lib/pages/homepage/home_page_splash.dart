import 'package:carrentmobileapp/components/car_tile.dart';
import 'package:carrentmobileapp/pages/homepage/home_page_splash_content.dart';
import 'package:flutter/material.dart';

class HomePageSplashScreen extends StatefulWidget {
  const HomePageSplashScreen({super.key});

  @override
  State<HomePageSplashScreen> createState() => _HomePageSplashScreenState();
}

class _HomePageSplashScreenState extends State<HomePageSplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Boxing Day 15% off Promo",
      "image": "assets/images/gwagon.avif",
    },
    {
      "text": "Merry Christmas 25% off Promo",
      "image": "assets/images/gwagon2.avif"
    },
    {
      "text": "New Year 2024 50% off Promo",
      "image": "assets/images/gwagon4.jpeg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => HomePageSplashContent(
              image: splashData[index]["image"],
              text: splashData[index]['text'],
            ),
          ),
        ),
        SizedBox(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                splashData.length,
                (index) => AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  margin: const EdgeInsets.only(right: 5),
                  height: 6,
                  width: currentPage == index ? 20 : 6,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.black
                        : const Color(0xFFD8D8D8),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(height: 30),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Vehicle',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'See all',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [CarTile(), CarTile(), CarTile(), CarTile(), CarTile()],
          ),
        ),
      ]),
    );
  }
}
