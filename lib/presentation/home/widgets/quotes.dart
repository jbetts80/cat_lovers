import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quotes extends StatelessWidget {
  const Quotes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black.withOpacity(0.5),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.all(10.r),
        child: const Text(
          'Owners of dogs will have noticed that, if you provide them with food and water and shelter and affection, they will think you are God. Whereas owners of cats are compelled to realize that, if you provide them with food and water and affection, they draw the conclusion that they are God.',
          style: TextStyle(
            height: 1.3,
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
