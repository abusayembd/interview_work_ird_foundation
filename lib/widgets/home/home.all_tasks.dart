import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app.colors.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.0),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Tasks",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.bold)),
                  Text("See All",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.primaryText.withOpacity(0.7))),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 560.h,
            child: ListView.builder(
              itemCount: 30,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.0),
                width: 140.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/Todo1.png",
                        width: 36.w,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Online Class Routine",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.primaryText,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Save Date: 12/12/2021",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.primaryText.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
