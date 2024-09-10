import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/Utils/Colors/Colors.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';
import 'package:insta_clone/Utils/Widgets/Profile_stack.dart';
import 'package:insta_clone/Views/Navbar/Navebar_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidthHalf = screenWidth / 2;
    double screenWidthHalfbyhalf = screenWidthHalf / 2;
    double screenHeightOneThird = screenHeight / 3;
    double screenHeightOneThirdHalf = screenHeightOneThird / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundBlack,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.lock_outline,),
        // ),
        title: InkWell(
          onTap: () {
            print('on tap');
          },
          child: Row(
            children: [
              Icon(
                Icons.lock_outline,
                color: iconColorWhite,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'usman_nawaz_',
                style: TextStyle(color: iconColorWhite),
              ),
              SizedBox(
                width: 2.w,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: iconColorWhite,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                uploadSvg,
                colorFilter: ColorFilter.mode(iconColorWhite, BlendMode.srcIn),
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: iconColorWhite,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: backgroundBlack,
            expandedHeight: screenHeightOneThird / 1.2,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            // ==========profile pic=======
                            child: Profilestack(
                              url: profilePng,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 100.w),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '84',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'post',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 200.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '84',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'post',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 200.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '84',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'post',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0.h),
                      child: Text(
                        'usman nawaz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // ========buttons
                    Container(
                      margin: EdgeInsets.only(top: 80.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20.r)),
                            width: screenWidthHalf / 1.3,
                            height: 100.h,

                            child: Center(
                              child: Text(
                                'Edit profile',
                                style: TextStyle(color: iconColorWhite),
                              ),
                            ),
                            // Background color
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20.r)),
                            width: screenWidthHalf / 1.3,
                            height: 100.h,

                            child: Center(
                                child: Text(
                              'Share profile',
                              style: TextStyle(color: iconColorWhite),
                            )),
                            // Background color
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 100.h,
                            width: 100.w,
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 60.h,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20.r)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              // =======tab bar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      tableSvg,
                      height: 70.h,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade800, BlendMode.srcIn),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      playSvg,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade800, BlendMode.srcIn),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      datesSvg,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade800, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    color: Colors.pink,
                    height: screenHeightOneThirdHalf,
                    width: screenWidthHalf / 1.55,
                    child: Image.asset(
                      profilePng,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: screenHeightOneThirdHalf,
                    width: screenWidthHalf / 1.55,
                    child: Image.asset(
                      profilePng,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.blue,
                      height: screenHeightOneThirdHalf,
                      // width: screenWidthHalf / 1.55,
                      child: Image.asset(
                        profilePng,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
