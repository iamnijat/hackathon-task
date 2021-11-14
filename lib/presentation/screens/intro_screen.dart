import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/presentation/screens/counter_screen.dart';
import 'package:hackathon_app/routes/slide_right_route.dart';
import 'package:sizer/sizer.dart';
import '../widgets/introAuth/intro_description.dart';
import '../widgets/introAuth/intro_slider.dart';
import '../widgets/introAuth/intro_title.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            const IntroSlider(),
            SizedBox(
              height: 9.5.h,
            ),
            IntroTitle(),
            SizedBox(
              height: 5.5.h,
            ),
            IntroDescription(),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                height: 8.5.h,
                child: DelayedDisplay(
                  delay: const Duration(seconds: 5), //seconds 5
                  fadingDuration: const Duration(seconds: 1), //seconds 2
                  slidingCurve: Curves.easeInCirc,
                  child: Material(
                    borderRadius: BorderRadius.circular(14.0),
                    shadowColor: Colors.black,
                    color: const Color.fromRGBO(43, 126, 135, 1),
                    elevation: 13.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const CounterScreen()));
                      },
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.5.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
