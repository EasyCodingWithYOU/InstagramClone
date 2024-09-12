import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profilestack extends StatefulWidget {
  final String url;
  const Profilestack({super.key, required this.url});

  @override
  State<Profilestack> createState() => _ProfilestackState();
}

class _ProfilestackState extends State<Profilestack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.h,
          width: 300.w,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              widget.url,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black,
            ),
            child: Center(
              child: Container(
                height: 200.h,
                width: 200.w,
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
