import 'package:api_fetching_data/screens/class_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ClassDetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
