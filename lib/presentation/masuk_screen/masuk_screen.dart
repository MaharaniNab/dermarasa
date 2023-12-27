import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:dermarasa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MasukScreen extends StatelessWidget {
  MasukScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 29.h, top: 86.v, right: 29.h),
                child: Column(children: [
                  Text("Masuk", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 16.v),
                  Text("Halo! Selamat Datang di DERMARASA",
                      style: CustomTextStyles.bodyMediumSalsaGray400),
                  SizedBox(height: 55.v),
                  _buildLoginForm(context),
                  SizedBox(height: 24.v),
                  _buildPasswordForm(context),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("Lupa sandi?",
                          style: CustomTextStyles
                              .bodyMediumSalsaDeeporangeA200_1
                              .copyWith(decoration: TextDecoration.underline))),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                      text: "Mulai",
                      margin: EdgeInsets.only(left: 26.h, right: 25.h),
                      onPressed: () {
                        onTapMulai(context);
                      }),
                  SizedBox(height: 34.v),
                  Text("Atau", style: CustomTextStyles.bodyMediumSalsa),
                  SizedBox(height: 7.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 26.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 32.h, vertical: 7.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFlatColorIconsGoogle,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, top: 6.v),
                            child: Text("Masuk Dengan Google",
                                style: CustomTextStyles.bodyMediumSalsaGray400))
                      ])),
                  SizedBox(height: 29.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("Tidak memiliki akun?",
                            style: CustomTextStyles.bodyMediumSalsa13)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtDaftar(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("Daftar",
                                style: CustomTextStyles
                                    .bodyMediumSalsaDeeporangeA200
                                    .copyWith(
                                        decoration: TextDecoration.underline))))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Username atau Email", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 9.v),
          CustomTextFormField(controller: userNameController)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sandi", style: CustomTextStyles.bodyMediumSalsa),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: editTextController,
              textInputAction: TextInputAction.done,
              obscureText: true)
        ]));
  }

  /// Navigates to the berandaContainerScreen when the action is triggered.
  onTapMulai(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.berandaContainerScreen);
  }

  /// Navigates to the daftarAkunScreen when the action is triggered.
  onTapTxtDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.daftarAkunScreen);
  }
}
