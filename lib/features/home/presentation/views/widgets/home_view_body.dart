import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/features/home/presentation/views/widgets/app_header.dart';
import 'package:food_app/features/home/presentation/views/widgets/categories.dart';
import 'package:food_app/features/home/presentation/views/widgets/search_area.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 242, 242),
      width: width(context),
      height: height(context),
      child:const SafeArea(
          child: Column(
        children: [AppHeader(),SearchArea(),Categories()],
      )),
    );
  }
}
