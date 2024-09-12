import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget gradientContainer(
    {double height = 300,
    double width = 300,
    String? img,
    double radius = 80}) {
  if (img != null) {
    return Stack(
      children: [
        Container(
          height: height.h,
          width: width.w,
          child: Center(
            child: CircleAvatar(
              radius: radius.r,
              backgroundImage: AssetImage(img),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.orange,
              ],
            ),
            // color: color,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  } else {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.pink,
            Colors.orange,
          ],
        ),
        // color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
