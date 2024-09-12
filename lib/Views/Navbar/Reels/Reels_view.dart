import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/Utils/Colors/Colors.dart';
import 'package:insta_clone/Utils/List_of_Images/List_of_Images.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';
import 'package:insta_clone/Views/Navbar/Navebar_view.dart';

class ReelsView extends StatefulWidget {
  const ReelsView({super.key});

  @override
  State<ReelsView> createState() => _ReelsViewState();
}

class _ReelsViewState extends State<ReelsView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // ========== bacground image ==================
              Container(
                height: screenHeight,
                width: screenHeight,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(listImages[index % listImages.length]),
                      fit: BoxFit.contain),
                ),
              ),
              // ========== Top app bar ==========
              SizedBox(
                height: screenHeight * 0.09,
                child: Padding(
                  padding: EdgeInsets.only(top: 80.h, left: 40.w, right: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Reels',
                            style: TextStyle(
                                color: iconColorWhite,
                                fontSize: 80.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: iconColorWhite,
                          )
                        ],
                      ),
                      Icon(
                        CupertinoIcons.camera,
                        color: iconColorWhite,
                      )
                    ],
                  ),
                ),
              ),
              // ================= top end ================
              // ========like share comment column===========
              Positioned(
                right: screenWidth * 0.04,
                bottom: screenHeight * 0.03,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.double_music_note,
                      color: iconColorWhite,
                      size: screenHeight * 0.033,
                    ),
                    Text(
                      "28",
                      style: TextStyle(
                          color: iconColorWhite,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenHeight * 0.023,
                    ),
                    SvgPicture.asset(
                      commentSvg,
                      colorFilter:
                          ColorFilter.mode(iconColorWhite, BlendMode.srcIn),
                    ),
                    Text(
                      "28",
                      style: TextStyle(
                          color: iconColorWhite,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenHeight * 0.023,
                    ),
                    SvgPicture.asset(
                      shareSvg,
                      colorFilter:
                          ColorFilter.mode(iconColorWhite, BlendMode.srcIn),
                    ),
                    Text(
                      "2",
                      style: TextStyle(
                          color: iconColorWhite,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenHeight * 0.023,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      color: iconColorWhite,
                    ),
                    SizedBox(
                      height: screenHeight * 0.023,
                    ),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                            image: AssetImage(profilePng), fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
              // ========like share comment column end ===========
              // ========= profile pic and name section on left================
              Positioned(
                left: screenWidth * 0.04,
                bottom: screenHeight * 0.03,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(profilePng),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Text(
                          "User Name",
                          style: TextStyle(
                              color: iconColorWhite,
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.023,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.music_note_2,
                          color: iconColorWhite,
                          size: screenHeight * 0.02,
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Text(
                          "Music name ",
                          style: TextStyle(
                              color: iconColorWhite,
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
