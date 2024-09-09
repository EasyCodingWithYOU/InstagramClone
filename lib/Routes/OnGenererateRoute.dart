import 'package:flutter/material.dart';
import 'package:insta_clone/Routes/RoutesName.dart';
import 'package:insta_clone/Views/Navbar/Home/Home_view.dart';
import 'package:insta_clone/Views/Navbar/Navebar_view.dart';
import 'package:insta_clone/Views/Navbar/Profile/Profile_view.dart';
import 'package:insta_clone/Views/Navbar/Reels/Reels_view.dart';
import 'package:insta_clone/Views/Navbar/Search/Search_view.dart';
import 'package:insta_clone/Views/Navbar/Upload/Upload_view.dart';

class OnGenererateRoute {
  static Route<dynamic> GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => NavebarView());
      case profileRote:
        return MaterialPageRoute(builder: (_) => ProfileView());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case searchRoute:
        return MaterialPageRoute(builder: (_) => SearchView());
      case uploadRoute:
        return MaterialPageRoute(builder: (_) => UploadView());
      case reelsRoute:
        return MaterialPageRoute(builder: (_) => ReelsView());
      case navebarRoute:
        return MaterialPageRoute(builder: (_) => NavebarView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404: Page not found')),
          ),
        );
    }
  }
}
