import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Intro',
      routes: {
        'Intro': (context) => const IntroScreen(),
        'Home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      home: const IntroScreen(),
    );
  }
}
