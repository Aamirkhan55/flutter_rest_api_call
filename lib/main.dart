import 'package:flutter/material.dart';
import 'package:flutter_rest_api_call/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rest Api Call',
      home: HomeScreen(),
    );
  }
}
