import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/Utils/Colors/Colors.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';
import 'package:insta_clone/Views/Navbar/Navebar_view.dart';

class homeComment extends StatefulWidget {
  const homeComment({super.key});

  @override
  State<homeComment> createState() => _homeCommentState();
}

class _homeCommentState extends State<homeComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundBlack,
      // color: Colors.pink,
      height: 350.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 110.h,
                    color: iconColorWhite,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "23",
                    style: TextStyle(color: iconColorWhite, fontSize: 60.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0.h),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      commentSvg,
                      colorFilter: const ColorFilter.mode(
                          iconColorWhite, BlendMode.srcIn),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "10",
                    style: TextStyle(color: iconColorWhite, fontSize: 60.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0.h),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      shareSvg,
                      colorFilter: const ColorFilter.mode(
                          iconColorWhite, BlendMode.srcIn),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "2",
                    style: TextStyle(color: iconColorWhite, fontSize: 60.sp),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'comment ',
              style: TextStyle(color: iconColorWhite),
            ),
          ),
        ],
      ),
    );
  }
}
