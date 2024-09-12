import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone/Utils/Widgets/Gradient_Container.dart';

class HomeScreenReel extends StatefulWidget {
  String img;
  int index;
  HomeScreenReel({super.key, required this.img, required this.index});

  @override
  State<HomeScreenReel> createState() => _HomeScreenReelState();
}

class _HomeScreenReelState extends State<HomeScreenReel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 1000.h,
          decoration: BoxDecoration(
              color: Colors.green[200],
              image: DecorationImage(
                  image: AssetImage(widget.img), fit: BoxFit.cover)),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    gradientContainer(height: 500.h, img: widget.img),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      " user name ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
