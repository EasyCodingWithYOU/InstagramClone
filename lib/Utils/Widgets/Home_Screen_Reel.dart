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

          // child: Image.asset(
          //   widget.img,
          // ),
          decoration: BoxDecoration(
              color: Colors.green[200],
              // color: backgroundBlack,
              image: DecorationImage(
                  image: AssetImage(widget.img), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    gradientContainer(height: 200.h, img: widget.img),
                    Text(
                      " name ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// List name = ["ali", "usman", 'ahmad', 'khuram', "shah"];
