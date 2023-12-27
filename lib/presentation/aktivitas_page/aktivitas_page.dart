import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AktivitasPage extends StatelessWidget {
  const AktivitasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  SizedBox(height: 29.v),
                  _buildFrame(context),
                  Spacer()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 32.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Aktivitas"));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        decoration: AppDecoration.outlineDeeporangeA2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle3463863,
                  height: 91.v,
                  width: 104.h,
                  radius: BorderRadius.horizontal(left: Radius.circular(8.h))),
              Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 5.v, 4.h, 9.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 166.h,
                            child: Text("Pembangunan Masjid \nBarokah",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainerSemiBold)),
                        SizedBox(height: 16.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("1 menit lalu",
                                      style: CustomTextStyles
                                          .labelLargeBluegray400Medium)),
                              Container(
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 9.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.black900,
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h, top: 3.v),
                                  child: Text("Rp 50.000",
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryContainer)),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.only(left: 29.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: 20.v,
                                      width: 55.h,
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMenu,
                                                height: 20.v,
                                                width: 55.h,
                                                radius:
                                                    BorderRadius.circular(10.h),
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgMenu(context);
                                                }),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Text("Berhasil",
                                                        style: CustomTextStyles
                                                            .bodySmallSalsa)))
                                          ])))
                            ])
                      ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the masukScreen when the action is triggered.
  onTapImgMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.masukScreen);
  }
}
