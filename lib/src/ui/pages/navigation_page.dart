import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_images.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          AppImages.navigationBg,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 9.h),
                child: SizedBox(
                  height: 64.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: Colors.grey,
                    ),
                    onPressed: () => context.goNamed('news'),
                    child: Text(
                      'News',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'Campton',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 9.h),
                child: SizedBox(
                  height: 64.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: Colors.grey,
                    ),
                    onPressed: () => context.goNamed('league'),
                    child: Text(
                      'Leagues',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'Campton',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 9.h),
                child: SizedBox(
                  height: 64.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: Colors.grey,
                    ),
                    onPressed: () => context.goNamed('quiz'),
                    child: Text(
                      'Quiz',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'Campton',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
