import '../beranda_page/widgets/donationform_item_widget.dart';
import '../beranda_page/widgets/viewhierarchy_item_widget.dart';
import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title_searchview.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BerandaPage extends StatelessWidget {
  BerandaPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSeventyFive(context),
                      SizedBox(height: 14.v),
                      _buildFrame(context),
                      SizedBox(height: 16.v),
                      _buildDonationForm(context),
                      SizedBox(height: 13.v),
                      _buildSeventyOne(context),
                      SizedBox(height: 3.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgEllipse4,
            margin: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 2.v)),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 20.h),
            hintText: "Cari ",
            controller: searchController));
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3463852,
              height: 160.v,
              width: 330.h,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(bottom: 2.v)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3463853,
              height: 160.v,
              width: 330.h,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(left: 16.h))
        ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 4.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDonation31,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    SizedBox(height: 2.v),
                    Text("Rp 17.675.843", style: theme.textTheme.bodySmall)
                  ])),
              Spacer(flex: 45),
              SizedBox(
                  height: 54.v,
                  child:
                      VerticalDivider(width: 1.h, thickness: 1.v, indent: 3.h)),
              Spacer(flex: 54),
              CustomOutlinedButton(
                  width: 80.h,
                  text: "Isi",
                  margin: EdgeInsets.only(top: 20.v, bottom: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildDonationForm(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 63.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 19.h, right: 32.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 45.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return DonationformItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h, right: 21.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                        child: Text("Penggalangan Dana ",
                            style: CustomTextStyles.titleMediumPrimary)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        })
                  ])),
          SizedBox(height: 7.v),
          SizedBox(
              height: 287.v,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ViewhierarchyItemWidget();
                  }))
        ]));
  }

  /// Navigates to the penggalanganDanaScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.penggalanganDanaScreen);
  }
}
