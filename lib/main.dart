import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/item_details_screen.dart';
import 'package:flutter_application_1/screens/meal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        'MealDetailsScreen': (context) => const MealDetailsScreen(),

        'MealScreen': (context) => const MealScreen(),
      },
    );
  }
}
