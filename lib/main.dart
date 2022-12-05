import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sizer/sizer.dart';
import 'package:space_x_latest_launch/src/injector.dart' as di;

import 'package:space_x_latest_launch/src/config/router/app_router.dart';
import 'package:space_x_latest_launch/src/presentation/bloc/space_x_launch_bloc.dart';

import 'src/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await dotenv.load(fileName: ".env");

  runApp(Sizer(builder: (context, orientation, deviceType) {
    return const MyApp();
  }));
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.injector<SpaceXLaunchBloc>()),
      ],
      child: MaterialApp.router(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: child!,
          );
        },
        title: 'SpaceXLatestLunch',
        theme: AppTheme.theme,
        routerDelegate: router.delegate(
          navigatorObservers: () => [AutoRouteObserver()],
        ),
        routeInformationParser: router.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
