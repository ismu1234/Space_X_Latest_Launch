import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';
import '../../config/router/app_router.dart';
import '../../core/contants/app_contants.dart';
import '../../core/theme/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => router.replace(const SpaceXLunchRoute()),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorTones.oceanGreen,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(7.w),
          child: SvgPicture.asset(
            ApplicationConstants.splashLogo,
            height: 40.h,
            width: 40.w,
          ),
        ),
      ),
    );
  }
}
