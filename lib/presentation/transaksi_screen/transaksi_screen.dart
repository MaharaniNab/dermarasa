import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:dermarasa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TransaksiScreen extends StatelessWidget {
  TransaksiScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
                child: Column(children: [
                  _buildRowFrame(context),
                  SizedBox(height: 21.v),
                  _buildColumnFrameTwentyThree(context),
                  SizedBox(height: 23.v),
                  _buildColumnFrame(context),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Pilih Metode Pembayaran",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 18.h, right: 33.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBcaRemovebgPreview,
                                height: 50.v,
                                width: 60.h),
                            CustomImageView(
                                imagePath: ImageConstant.imgBriRemovebgPreview,
                                height: 46.v,
                                width: 60.h,
                                margin: EdgeInsets.only(left: 15.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgDanaRemovebgPreview,
                                height: 33.v,
                                width: 60.h,
                                margin: EdgeInsets.only(
                                    left: 15.h, top: 8.v, bottom: 8.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgLinkRemovebgPreview,
                                height: 30.v,
                                width: 60.h,
                                margin: EdgeInsets.only(
                                    left: 15.h, top: 9.v, bottom: 9.v))
                          ]))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildDonateButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Masukkan Nominal Donasi"));
  }

  /// Section Widget
  Widget _buildRowFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
              decoration: AppDecoration.outlinePrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
              child: Text("Rp 10.000", style: theme.textTheme.labelLarge)),
          Container(
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
              decoration: AppDecoration.outlinePrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
              child: Text("Rp 20.000", style: theme.textTheme.labelLarge)),
          Container(
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
              decoration: AppDecoration.outlinePrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
              child: Text("Rp 50.000", style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildColumnFrameTwentyThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Nominal", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 32.h),
              child: CustomTextFormField(controller: editTextController))
        ]));
  }

  /// Section Widget
  Widget _buildColumnFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sertakan doa dan dukungan",
              style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(right: 28.h),
              child: CustomTextFormField(
                  controller: editTextController1,
                  textInputAction: TextInputAction.done))
        ]));
  }

  /// Section Widget
  Widget _buildDonateButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Donasi ",
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 32.v),
        buttonTextStyle: theme.textTheme.labelLarge!);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
