import 'package:hackathon_app/presentation/screens/category_screen.dart';
import 'package:hackathon_app/routes/bouncy_page_route.dart';
import 'package:hackathon_app/routes/slide_left_route.dart';
import 'package:hackathon_app/routes/slide_right_route.dart';

import '../../presentation/widgets/ageselection/animated_circles.dart';
import '../../presentation/widgets/ageselection/counter_slider.dart';
import '../../presentation/widgets/ageselection/counter_value.dart';
import '../../presentation/widgets/ageselection/plasma_background.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 7.h, left: 8.w, right: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Color.fromRGBO(38, 122, 133, 1),
                      size: 4.h,
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                            SlideRightRoute(page: const CategoryScreen()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Color.fromRGBO(38, 122, 133, 1),
                          fontFamily: "Poppins",
                          fontSize: 17.5.sp,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "Pick your child's age\n",
                  style: TextStyle(
                    fontSize: 22.5.sp,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(38, 122, 133, 1),
                  ),
                ),
                TextSpan(
                  text: "Tap next on your choice",
                  style: TextStyle(
                    height: 2.5,
                    fontFamily: "Poppins",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const PlasmaBackground(),
              Positioned(
                top: 10.0.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    AnimatedCircles(),
                    CounterValue(),
                  ],
                ),
              ),
               //ositioned(bottom: 8.0.h, child: const CounterSlider()),
            ],
          ),
          SizedBox(height: 8.h,),
          const CounterSlider(),
        
        
        
        ],
        
      ),
    ));
  }
}
