import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app.colors.dart';

class TaskSlider extends StatelessWidget {
  final List<Map<String, String>> tasks;
  const TaskSlider({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15.w, vertical: 15.0),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Reminder Task",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text("See All",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white.withOpacity(0.7))),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100.0,
          child: ListView.builder(
            itemCount: tasks.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(left: 10.w),
              padding: EdgeInsets.symmetric(
                  horizontal: 12.w, vertical: 12.0),
              width: 140.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    tasks[index]["icon"]!,
                    width: 36.w,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    tasks[index]["title"]!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Text(
                    tasks[index]["date"]!,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.primaryText.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}