import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/view/splash_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  // * for names
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashView,
      path: '/',
      initial: true,
    ),
  ],
)

/// `AppRouter` is a class that extends `_` and is used to generate a `Router` object
class AppRouter extends _$AppRouter {}
