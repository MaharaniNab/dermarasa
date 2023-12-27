import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/presentation/aktivitas_page/aktivitas_page.dart';
import 'package:dermarasa/presentation/akun_page/akun_page.dart';
import 'package:dermarasa/presentation/beranda_page/beranda_page.dart';
import 'package:dermarasa/presentation/pesan_page/pesan_page.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_bottom_bar.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:dermarasa/widgets/custom_icon_button.dart';
import 'package:dermarasa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfilScreen extends StatelessWidget {
  EditProfilScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
                child: Column(children: [
                  SizedBox(
                      height: 100.v,
                      width: 102.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            radius: BorderRadius.circular(50.h),
                            alignment: Alignment.center),
                        CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFluentCameraEdit20Regular))
                      ])),
                  SizedBox(height: 59.v),
                  _buildProfileSection(context),
                  SizedBox(height: 13.v),
                  _buildEmailSection(context),
                  SizedBox(height: 7.v),
                  _buildPasswordSection(context),
                  SizedBox(height: 7.v),
                  _buildBioSection(context),
                  SizedBox(height: 87.v),
                  CustomElevatedButton(
                      text: "Simpan",
                      buttonTextStyle: theme.textTheme.labelLarge!),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 21.h, right: 30.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 13.h, top: 17.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Edit Profil"));
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Nama Pengguna", style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          SizedBox(
              height: 48.v,
              width: 295.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomTextFormField(
                    width: 295.h,
                    controller: editTextController,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 13.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email", style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          SizedBox(
              height: 48.v,
              width: 295.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomTextFormField(
                    width: 295.h,
                    controller: emailController,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 13.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sandi", style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          SizedBox(
              height: 48.v,
              width: 295.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomTextFormField(
                    width: 295.h,
                    controller: editTextController1,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 13.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBioSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Bio", style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          SizedBox(
              height: 48.v,
              width: 295.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomTextFormField(
                    width: 295.h,
                    controller: editTextController2,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 13.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.berandaPage;
      case BottomBarEnum.Aktivitas:
        return AppRoutes.aktivitasPage;
      case BottomBarEnum.Pesan:
        return AppRoutes.pesanPage;
      case BottomBarEnum.Akun:
        return AppRoutes.akunPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.berandaPage:
        return BerandaPage();
      case AppRoutes.aktivitasPage:
        return AktivitasPage();
      case AppRoutes.pesanPage:
        return PesanPage();
      case AppRoutes.akunPage:
        return AkunPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
