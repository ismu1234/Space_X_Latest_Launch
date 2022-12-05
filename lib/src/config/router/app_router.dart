import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:space_x_latest_launch/src/presentation/view/space_x_lunch_view.dart';

import '../../presentation/view/splash_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  // * for names
  replaceInRouteName: 'View,Route',

  routes: <AutoRoute>[
    AutoRoute(
      page: SplashView,
      path: '/splash',
      initial: true,
    ),
    AutoRoute(
      page: SpaceXLunchView,
      path: '/spacexlunch',
    ),
  ],
)

/// `AppRouter` is a class that extends `_` and is used to generate a `Router` object
class AppRouter extends _$AppRouter {}
