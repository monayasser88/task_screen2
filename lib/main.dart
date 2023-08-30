import 'package:flutter/material.dart';
import 'package:task_screen2/home_screen.dart';

void main() {
  runApp(const Screen2());
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}