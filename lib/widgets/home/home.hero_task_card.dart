
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app.colors.dart';

class HeroTaskCard extends StatelessWidget {
  final String title;
  final String details;
  const HeroTaskCard({
    Key? key,
    required this.title,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.0),
          margin: EdgeInsets.symmetric(
              horizontal: 15.w, vertical: 20.h),
          decoration: BoxDecoration(
            border:
            Border.all(color: Colors.white.withOpacity(0.1)),
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.h,),
              Text(
                details,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                width: 110.w,
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: AppColors.popGreen,
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.r)),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Playicon.png", width: 10.w),
                    const SizedBox(width: 8.0),
                    Text("Watch Video", style: TextStyle(fontSize: 12.sp, color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.0),
          child: Image.asset("assets/Todopin.png", width: 75.w,),
        ),
      ],
    );
  }
}
