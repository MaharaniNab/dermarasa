import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PesanPage extends StatelessWidget {
  const PesanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 5.v),
                decoration: AppDecoration.fillOnPrimary,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(right: 31.h),
                          child: CustomIconButton(
                              height: 46.v,
                              width: 45.h,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup15)))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 13.h, top: 20.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Pesan"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
