import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
