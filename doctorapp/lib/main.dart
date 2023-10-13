
import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor_app_theme.dart';
import 'package:flutter_doctor_app/screen/doctor_detail_screen.dart';
import 'package:flutter_doctor_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DoctorAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/':(context) => const HomeScreen(),
        '/doctor_details' : (context) => const DoctorDetailScreen(),

      },
    );
  }
}