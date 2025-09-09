import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key, required this.category});
  final Category category;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            InkWell(
              onTap: () => {
                Navigator.pushNamed(
                  context,
                  'MealScreen',
                  arguments: {
                    'name': widget.category.name,
                    'id': widget.category.id,
                  },
                ),
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(widget.category.images),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.red,
                child: Text(
                  widget.category.name,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
