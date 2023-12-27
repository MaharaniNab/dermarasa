import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FrameTwentyeightScreen extends StatelessWidget {
  const FrameTwentyeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.h,
                    vertical: 33.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgOnboarding,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBrownAndYello,
                        height: 86.v,
                        width: 101.h,
                      ),
                      Spacer(),
                      SizedBox(height: 67.v),
                      Column(
                        children: [
                          Container(
                            width: 265.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              right: 7.h,
                            ),
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "Bersama berbagi, \nbersama peduli",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(height: 40.v),
                          CustomElevatedButton(
                            height: 47.v,
                            text: "Mulai Donasi ",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              _buildDonationSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 37.h),
      child: IntrinsicWidth(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 33.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnboarding2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBrownAndYello,
                height: 86.v,
                width: 101.h,
              ),
              Spacer(),
              Container(
                width: 226.h,
                margin: EdgeInsets.symmetric(horizontal: 27.h),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Setitik donasi, \nlautan manfaat",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                height: 47.v,
                text: "Mulai Donasi ",
              ),
              SizedBox(height: 67.v),
            ],
          ),
        ),
      ),
    );
  }
}
