import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone/Routes/OnGenererateRoute.dart';
import 'package:insta_clone/Routes/RoutesName.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Change this to your desired color
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark // or Brightness.dark
      ));
  runApp(InstaApp());
}

class InstaApp extends StatefulWidget {
  const InstaApp({super.key});

  @override
  State<InstaApp> createState() => _InstaAppState();
}

class _InstaAppState extends State<InstaApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 3040),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: OnGenererateRoute.GenerateRoute,
          initialRoute: initialRoute,
        );
      },
    );
  }
}
