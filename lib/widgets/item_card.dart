import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/meal_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.pushNamed(
          context,
          'MealDetailsScreen',
          arguments: {
            'id': meal.id,
            'title': meal.title,
            'imageUrl': meal.imageUrl,
            'description': meal.description,
            'time': meal.time,
            'salary': meal.salary,
          },
        ),
      },
      child: Card(
        color: Colors.amber,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  meal.imageUrl,
                  width: 150,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  meal.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
