import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/features/home/presentation/views/widgets/app_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: height(context),
      child: SafeArea(
          child: Column(
        children: [AppHeader()],
      )),
    );
  }
}
