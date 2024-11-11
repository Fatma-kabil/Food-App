import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * 0.2, // Set a fixed height for the section
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popular.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Add your tap handling logic here
            },
            child: Container(
              constraints: BoxConstraints(minWidth: width(context) * 0.2), // Ensure there is enough width
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Position of the shadow
                  ),
                ],
              ),
              child: Column(
               
                crossAxisAlignment: CrossAxisAlignment.end, // Center the items horizontally
                children: [
                  Icon(Icons.favorite_outline_outlined), // Icon size and color
                 
                  Image.asset(
                    imagepath + popular[index],
                    width: width(context) * 0.3, // Image width
                    height: height(context) * 0.1, // Adjusted image height
                     // Ensure the image maintains its aspect ratio
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List popular = ["burger.png", "pizza.png", "sandwich.png"];