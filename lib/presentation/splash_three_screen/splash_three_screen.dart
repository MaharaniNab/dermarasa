import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashThreeScreen extends StatelessWidget {
  const SplashThreeScreen({Key? key})
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
              SizedBox(
                height: 215.v,
                width: 216.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogoDermarasa1,
                      height: 167.adaptSize,
                      width: 167.adaptSize,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "DERMARASA",
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
