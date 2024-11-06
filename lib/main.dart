import 'package:flutter/material.dart';
import 'package:food_app/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const
   FoodApp());
}

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Ui',
    debugShowCheckedModeBanner: false,
    home: HomeView(),
    );
  }
}
