import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorTones.trueBlue,
      child: Center(child: Text('NNDIABET')),
    );
  }
}
