import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_text_styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.length,
  });

  final int length;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundLight,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            'Ride ${Random().nextInt(length)} of $length',
            style: AppTextStyle.tabbarTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
