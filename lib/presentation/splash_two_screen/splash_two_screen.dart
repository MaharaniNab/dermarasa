import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogoDermarasa1,
                height: 167.adaptSize,
                width: 167.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
