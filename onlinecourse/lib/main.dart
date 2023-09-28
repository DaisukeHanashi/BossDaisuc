import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const OnlineCourse());

class OnlineCourse extends StatelessWidget {
  const OnlineCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


