import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/widgets/categoryItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff019689),

        title: Center(
          child: Text(
            "MealApp",
            style: TextStyle(
              color: Color.fromARGB(255, 33, 60, 58),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}
