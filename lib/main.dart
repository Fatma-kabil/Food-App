import 'package:flutter/material.dart';

void main() {
  runApp(const
   FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    );
  }
}