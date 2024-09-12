import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_clone/Utils/List_of_Images/List_of_Images.dart';
import 'package:insta_clone/Utils/Png_Names/Png_Names.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidthHalf = screenWidth / 2;
    double screenWidthHalfbyhalf = screenWidthHalf / 2;
    double screenHeightOneThird = screenHeight / 3;
    double screenHeightOneThirdHalf = screenHeightOneThird / 2;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 200.h,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[700],
                        filled: true,
                        hintText: 'search',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding: EdgeInsets.only(top: 20.h, left: 40.w),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100).r)),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 80,
                itemBuilder: (context, index) {
                  if (index.isEven) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.amber,
                                  child: Image.asset(
                                    listImages[index % listImages.length],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    listImages[1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    listImages[3],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.amber,
                                  child: Image.asset(
                                    listImages[4],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: screenHeightOneThird,
                          width: screenWidthHalf,
                          color: Colors.green[200],
                          child: Image.asset(
                            listImages[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        Container(
                          height: screenHeightOneThird,
                          width: screenWidthHalf,
                          color: Colors.green[200],
                          child: Image.asset(
                            listImages[2],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.amber,
                                  child: Image.asset(
                                    listImages[3],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    listImages[1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    listImages[5],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  height: screenHeightOneThirdHalf,
                                  width: screenWidthHalfbyhalf,
                                  color: Colors.amber,
                                  child: Image.asset(
                                    listImages[4],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
