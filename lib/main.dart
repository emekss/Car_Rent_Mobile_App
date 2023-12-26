import 'package:carrentmobileapp/pages/homepage/home_page.dart';
import 'package:carrentmobileapp/pages/logo_page.dart';
import 'package:carrentmobileapp/pages/splash/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogoPage(),
      routes: {
        '/body': (context) => const Body(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
