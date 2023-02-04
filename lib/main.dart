import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ird_dummy_app/constants/app.colors.dart';
import 'package:ird_dummy_app/data/DummyData.dart';
import 'package:ird_dummy_app/widgets/home/hero_gradient_bg.dart';
import 'package:ird_dummy_app/widgets/home/home.hero_task_card.dart';
import 'package:ird_dummy_app/widgets/home/home.task_slider.dart';
import 'package:ird_dummy_app/widgets/shared/app.appbar.dart';
import 'package:ird_dummy_app/widgets/home/home.all_tasks.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            body: Stack(
              children: [
                const HeroGradientBg(),
                SafeArea(
                  child: Column(
                    children: const [
                      AppAppBar(
                        name: "Habib",
                        subtitle: "Let's explore your notes",
                        imageUrl: "https://i.pravatar.cc/400",
                      ),
                      HeroTaskCard(
                        title: "Welcome to TickTick Task",
                        details:
                            "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                      ),
                      TaskSlider(
                        tasks: DummyData.sliderTasks
                      ),
                      AllTasks(),
                    ],
                  ),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(
                color: AppColors.primaryText,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: const TextStyle(
                color: AppColors.unselectedTabLabel,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Home.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Search.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Record.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  label: 'Record',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Saved.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Settings.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  label: 'Settings',
                )
              ],
              selectedItemColor: AppColors.primaryText,
            ),
          ),
        );
      },
    );
  }
}


