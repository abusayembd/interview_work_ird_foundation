import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app.colors.dart';

class AppAppBar extends StatelessWidget {
  final String name;
  final String subtitle;
  final String imageUrl;
  const AppAppBar({
    Key? key,
    required this.name,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      height: 64.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text("Hi, $name 👋", style: TextStyle(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold)),
              Text(subtitle, style: TextStyle(fontSize: 12.sp, color: Colors.white.withOpacity(0.7)))
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColors.popGreen,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                  backgroundImage:
                  NetworkImage(imageUrl)),
            ),
          ),
        ],
      ),
    );
  }
}
