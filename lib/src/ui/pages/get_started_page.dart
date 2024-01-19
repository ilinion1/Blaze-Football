import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_images.dart';
import 'package:go_router/go_router.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({
    super.key,
    // this.isLoading = false,
  });

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _awaitFunc();
  }

  void _awaitFunc() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(height: 1),
              children: [
                TextSpan(
                  text: 'Welcome to\n',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 36.sp,
                      fontFamily: 'Campton',
                      height: 1,
                      color: AppColors.white),
                ),
                TextSpan(
                  text: 'Blaze Football',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 36.sp,
                        fontFamily: 'Campton',
                        color: AppColors.red,
                        height: 1,
                      ),
                ),
              ],
            ),
          ),
          Image.asset(
            AppImages.splashScreen,
            height: 347.r,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Text(
              'Immerse yourself in the world of football. Follow the latest news and all the events in the world of football and sports.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'Campton',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            child: SizedBox(
              height: 64.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.red,
                  foregroundColor: Colors.grey,
                ),
                onPressed: () {
                  context.go('/navigation');
                },
                child: _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: AppColors.white),
                      )
                    : Text(
                        'Continue',
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
    );
  }
}
