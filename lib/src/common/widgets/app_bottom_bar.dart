import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_icons.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;

  void onTap(int index) {
    if (_currentIndex == index) return;
    _currentIndex = index;
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: ColoredBox(
          color: AppColors.orange,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BottomBarItem(
                index: 0,
                isActive: _currentIndex == 0,
                icon: AppIcons.home,
              ),
              _BottomBarItem(
                index: 1,
                isActive: _currentIndex == 1,
                icon: AppIcons.news,
              ),
              _BottomBarItem(
                index: 2,
                isActive: _currentIndex == 2,
                icon: AppIcons.quizlet,
              ),
              _BottomBarItem(
                index: 3,
                isActive: _currentIndex == 3,
                icon: AppIcons.soccerField,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.index,
    required this.isActive,
    required this.icon,
  });

  final int index;
  final bool isActive;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      onPressed: () {
        context.findAncestorStateOfType<_AppBottomNavBarState>()?.onTap(index);
      },
      icon: SvgPicture.asset(
        icon,
        colorFilter: (isActive)
            ? const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              )
            : ColorFilter.mode(
                Colors.white.withAlpha(50),
                BlendMode.srcIn,
              ),
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}
