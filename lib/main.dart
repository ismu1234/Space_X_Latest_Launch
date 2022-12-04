import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:space_x_latest_launch/src/injector.dart' as di;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x_latest_launch/src/config/router/app_router.dart';

import 'src/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) {
        return MaterialApp.router(
          title: 'NNDiabet',
          theme: AppTheme.theme,
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
