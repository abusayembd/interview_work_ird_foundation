import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app.colors.dart';

class HeroGradientBg extends StatelessWidget {
  const HeroGradientBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 386.h,
      decoration: BoxDecoration(
        gradient: const RadialGradient(
          center: Alignment(-1.0, -0.6),
          radius: 1.0,
          colors: [
            AppColors.heroGradientStart,
            AppColors.primaryText,
            AppColors.heroGradientEnd,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
    );
  }
}
