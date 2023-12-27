import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_checkbox_button.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:dermarasa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DaftarAkunScreen extends StatelessWidget {
  DaftarAkunScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  bool agreeWithTermsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                child: Column(children: [
                  Text("Daftar Akun", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 13.v),
                  Text("Halo! Selamat Datang di DERMARASA",
                      style: CustomTextStyles.bodyMediumSalsaGray400),
                  SizedBox(height: 22.v),
                  _buildFrameTwentyOne(context),
                  SizedBox(height: 26.v),
                  _buildFrameTwentyTwo(context),
                  SizedBox(height: 24.v),
                  _buildFrameTwentyThree(context),
                  SizedBox(height: 24.v),
                  _buildFrameTwentyFour(context),
                  SizedBox(height: 29.v),
                  _buildAgreeWithTermsAndConditions(context),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      text: "Daftar",
                      margin: EdgeInsets.only(left: 29.h, right: 30.h),
                      onPressed: () {
                        onTapDaftar(context);
                      }),
                  SizedBox(height: 20.v),
                  Text("Atau", style: CustomTextStyles.bodyMediumSalsa),
                  SizedBox(height: 5.v),
                  _buildSeventyFive(context),
                  SizedBox(height: 14.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Sudah memiliki akun?",
                        style: CustomTextStyles.bodyMediumSalsa13),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Masuk",
                            style: CustomTextStyles
                                .bodyMediumSalsaDeeporangeA200
                                .copyWith(
                                    decoration: TextDecoration.underline)))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 46.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.fromLTRB(27.h, 23.v, 312.h, 20.v)));
  }

  /// Section Widget
  Widget _buildFrameTwentyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Nama", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 8.v),
          CustomTextFormField(controller: editTextController)
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Nomor Telepon", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 7.v),
          CustomTextFormField(controller: editTextController1)
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 9.v),
          CustomTextFormField(controller: emailController)
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sandi", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: editTextController2,
              textInputAction: TextInputAction.done)
        ]));
  }

  /// Section Widget
  Widget _buildAgreeWithTermsAndConditions(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 70.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Setuju dengan syarat dan ketentuan",
                value: agreeWithTermsAndConditions,
                onChange: (value) {
                  agreeWithTermsAndConditions = value;
                })));
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 63.h, vertical: 9.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgFlatColorIconsGoogle,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 5.v),
              child: Text("Masuk Dengan Google",
                  style: CustomTextStyles.bodyMediumSalsaGray400))
        ]));
  }

  /// Navigates to the berandaContainerScreen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.berandaContainerScreen);
  }
}
