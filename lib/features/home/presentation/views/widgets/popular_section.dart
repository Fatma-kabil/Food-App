import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          const Text("Popular Food",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height:
                height(context) * 0.29, // Set a fixed height for the section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popular.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Add your tap handling logic hereb2n/
                  },
                  child: Container(
                    width: 200, // Ensure there is enough width
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
                          offset: const Offset(0, 3), // Position of the shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Center the items horizontally
                      children: [
                        SizedBox(
                          width: 200,
                          child: Stack(
                            children: [
                              Image.asset(
                                imagepath + popular[index]["image "],
                                width: width(context) * 0.34, // Image width
                                height: height(context) *
                                    0.13, // Adjusted image height
                                // Ensure the image maintains its aspect ratio
                              ),
                              const Positioned(
                                right: 0,
                                child: Icon(Icons.favorite_outline_outlined),
                              ),
                            ],
                          ),
                        ),
                        // Icon size and color

                        Text(popular[index]["name"],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(popular[index]["cat"],
                            style: const TextStyle(
                              fontSize: 15,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Price: ${popular[index]['price']}\$",
                                style: const TextStyle(
                                  fontSize: 15,
                                )),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List popular = [
  {
    "image ": "burger.png",
    "name": "Hamburger",
    "cat": "Burger",
    "price": "200"
  },
  {
    "image ": "pizza.png",
    "name": "Chicken Pizza",
    "cat": "Pizaa",
    "price": "300"
  },
  {
    "image ": "Sandwich.png",
    "name": "Cheese Sandwich",
    "cat": "Sandwich",
    "price": 180
  }
];
