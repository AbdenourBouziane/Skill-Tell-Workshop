import 'package:flutter/material.dart';
import 'package:passing_data/screens/home_screen.dart';

import 'screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Passing Example',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
