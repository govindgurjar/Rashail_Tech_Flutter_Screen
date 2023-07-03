import 'package:flutter/material.dart';
import 'package:rashail_tech_ui/Screens/fifth_screen.dart';
import 'package:rashail_tech_ui/Screens/sencond_screen.dart';
import 'package:rashail_tech_ui/Screens/sixth_screen.dart';
import 'package:rashail_tech_ui/Screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FifthScreen(),
    );
  }
}
