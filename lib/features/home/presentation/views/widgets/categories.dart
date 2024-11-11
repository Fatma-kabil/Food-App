import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String selected = categories[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, // Set a specific height for the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = categories[index];
              });
            },
            child: Container(
              constraints: BoxConstraints(minWidth: width(context) * 0.2),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: selected == categories[index] ? Colors.red : Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: selected == categories[index] ? Colors.red : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: selected == categories[index] ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> categories = ["All", "Pizza", "Burger", "Sandwiches"];