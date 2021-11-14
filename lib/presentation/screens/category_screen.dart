import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/presentation/screens/quiz_screen.dart';
import 'package:hackathon_app/presentation/screens/tutorial_screen.dart';
import 'package:hackathon_app/presentation/widgets/bubble_container.dart';
import 'package:hackathon_app/routes/slide_right_route.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isClikced = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 244, 246, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 5.h,
                left: 5.w,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: const Color.fromRGBO(38, 122, 133, 1),
                        size: 4.2.h,
                      )),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.h),
                child: Container(
                  height: 35.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(51, 112, 118, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: SvgPicture.asset(
                          "assets/images/undraw_questions_re_1fy7.svg",
                          width: 12.w,
                          height: 23.h,
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 6.w, right: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Quiz Categories",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 4.2.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(38, 122, 133, 1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Raleway",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClikced = !isClikced;
                          });
                          Get.to(() => const QuizScreen());
                        },
                        child: Container(
                          height: 18.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: isClikced
                                ? Color.fromRGBO(51, 112, 118, 1)
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Positioned(
                                  top: 13,
                                  child: Image.asset(
                                    "assets/images/equation.png",
                                    width: 10.w,
                                    height: 10.h,
                                  ),
                                ),
                                Positioned(
                                  top: 95,
                                  child: Text(
                                    "Math",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: isClikced
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      BubbleContainer(
                        imageUrl: "assets/images/science.png",
                        title: "Science",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      BubbleContainer(
                        imageUrl: "assets/images/translation.png",
                        title: "Language",
                      ),
                      BubbleContainer(
                        imageUrl: "assets/images/book.png",
                        title: "Knowledge",
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
          ],
        ),
      ),
    );
  }
}
