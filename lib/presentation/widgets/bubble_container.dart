import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BubbleContainer extends StatefulWidget {
  final String imageUrl, title;

  BubbleContainer({
    this.imageUrl,
    this.title,
  });

  @override
  State<BubbleContainer> createState() => _BubbleContainerState();
}

class _BubbleContainerState extends State<BubbleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Positioned(
          top: 13,
          child: Image.asset(
            widget.imageUrl,
            width: 10.w,
            height: 10.h,
          ),
        ),
        Positioned(
          top: 95,
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 15.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}
