import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';
import 'package:insta_clone/Utils/Widgets/Gradient_Container.dart';

Widget stories() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 20,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              gradientContainer(img: profilePng, radius: 150),
            ],
          ),
          Text(
            " name ",
            style: TextStyle(color: Colors.white),
          ),
        ],
      );
    },
  );
}
