import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
          
            child:Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    hintStyle:const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.grey),
              ),
            ),),
          
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
                child: Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(100)),
              child: SvgPicture.asset(
                "${imagepath}filter-svgrepo-com.svg",
                color: Colors.white,
              ),
            )),
          )
        ],
      ),
    );
  }
}
