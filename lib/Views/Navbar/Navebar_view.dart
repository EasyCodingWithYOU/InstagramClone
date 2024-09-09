import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';

import 'package:insta_clone/Views/Navbar/Home/Home_view.dart';
import 'package:insta_clone/Views/Navbar/Profile/Profile_view.dart';
import 'package:insta_clone/Views/Navbar/Reels/Reels_view.dart';
import 'package:insta_clone/Views/Navbar/Search/Search_view.dart';
import 'package:insta_clone/Views/Navbar/Upload/Upload_view.dart';
import 'package:insta_clone/Views/main.dart';
part '../../Utils/Navbar_views_list/Navbar_views_list.dart';
part '../../Utils/Svg_Names/Svg_Names.dart';

class NavebarView extends StatefulWidget {
  const NavebarView({super.key});

  @override
  State<NavebarView> createState() => _NavebarViewState();
}

class _NavebarViewState extends State<NavebarView> {
  int _viewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewsList[_viewIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.transparent,
        enableFeedback: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // selectedItemColor: Colors.green,
        backgroundColor: Colors.black,
        currentIndex: _viewIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _viewIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
              icon: _viewIndex == 0
                  ? SvgPicture.asset(
                      homeSvg,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcATop),
                    )
                  : const Icon(
                      CupertinoIcons.home,
                      color: Colors.white,
                    ),
              label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
              size: _viewIndex == 1 ? 100.h : 90.h,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                uploadSvg,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: 'upload'),
          BottomNavigationBarItem(
              icon: _viewIndex == 3
                  ? SvgPicture.asset(
                      selectPlaySvg,
                      height: 150.h,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    )
                  : SvgPicture.asset(
                      playSvg,
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
              label: 'reel'),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage(profilePng),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
