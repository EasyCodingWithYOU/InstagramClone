import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/Utils/Colors/Colors.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';
import 'package:insta_clone/Utils/Widgets/Home_Comment.dart';
import 'package:insta_clone/Utils/Widgets/Home_Screen_Reel.dart';
import 'package:insta_clone/Utils/Widgets/Profile_stack.dart';
import 'package:insta_clone/Utils/Widgets/Stories.dart';
import 'package:insta_clone/Views/Navbar/Navebar_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(child: Text('home')),
    // );
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 700.h,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  children: [
                    Container(
                      color: Colors.black,
                      margin: EdgeInsets.only(top: 40.h, bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50.0.w),
                            child: Text(
                              '𝑰𝒏𝒔𝒕𝒓𝒈𝒓𝒂𝒎',
                              style: TextStyle(
                                  fontSize: 90.sp, color: iconColorWhite),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    size: 110.h,
                                    Icons.favorite_border,
                                    color: iconColorWhite,
                                  )),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  chatSvg,
                                  colorFilter: ColorFilter.mode(
                                      iconColorWhite, BlendMode.srcIn),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   // height: 400.h,
                    //   color: Colors.green,
                    // child: stories(),
                    // ),
                    // ==========stroeis

                    SizedBox(
                      height: 400.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 12.h),
                              child: Column(
                                children: [
                                  Profilestack(url: profilePng),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(color: iconColorWhite),
                                  ),
                                ],
                              ),
                            ),
                            stories(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      HomeScreenReel(
                        index: index,
                        img: profilePng,
                      ),
                      homeComment(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
