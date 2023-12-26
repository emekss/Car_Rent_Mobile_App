import 'package:carrentmobileapp/pages/homepage/home_page.dart';
import 'package:carrentmobileapp/pages/logo_page.dart';
import 'package:carrentmobileapp/pages/sign_in_page.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
