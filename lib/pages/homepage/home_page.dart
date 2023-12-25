import 'package:carrentmobileapp/pages/homepage/home_page_splash.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Location',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text('California, USA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.search_rounded),
                    SizedBox(width: 10),
                    Icon(Icons.notifications_rounded)
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            SizedBox(height: 550, child: HomePageSplashScreen()),
            // Row(
            //   children: [
            //     Text('Top Vehicle'),
            //     Text('View all'),
            //   ],
            // )
          ],
        )),
      ),
    );
  }
}
