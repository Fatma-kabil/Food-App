import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "${imagepath}person.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Choose",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RichText(
              text:const TextSpan(children: [
            TextSpan(
                text: 'Your Favotite',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
                     TextSpan(
                text: ' Food',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red))
          ]))
        ],
      ),
    );
  }
}
