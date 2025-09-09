import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: Color(0xff009689),
      appBar: AppBar(
        title: Text(data['title'], style: TextStyle(color: Color(0xff009689))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(data['imageUrl'], height: 250, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    data['description'] ?? 'No description available.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Time = ${data['time']}",
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "Salary = ${data['salary']}\$",
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
