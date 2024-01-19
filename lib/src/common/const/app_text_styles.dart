import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';

abstract class AppTextStyle {
  static final leagueTitle = TextStyle(
    fontFamily: 'Campton',
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static final tabStyle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final tabbarTitle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final tableContentStyle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final tableTitleStyle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.red,
  );

  static final newsTitleStyle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );

  static final newsContentStyle = TextStyle(
    fontFamily: 'Campton',
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
}
