import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/models/meal_model.dart';
import 'package:flutter_application_1/widgets/item_card.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String id = data["id"];
    final String title = data["name"];

    List<Meal> mealFilter = meals.where((meal) {
      return meal.categoryNumber == id;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff019689),
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 33, 60, 58),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: mealFilter.length,
        itemBuilder: (BuildContext context, int index) {
          final meal = mealFilter[index];
          return ItemCard(meal: meal);
        },
      ),
    );
  }
}
