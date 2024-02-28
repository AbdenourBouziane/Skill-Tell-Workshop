import 'package:flutter/material.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1",
                style: TextStyle(color: Colors.red, fontSize: 48),
              ),
              Text("2"),
            ],
          ),
        ),
      ),
    );
  }
}
