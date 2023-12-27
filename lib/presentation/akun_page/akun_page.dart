import '../akun_page/widgets/mdiaccount_item_widget.dart';
import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

// ignore_for_file: must_be_immutable
class AkunPage extends StatelessWidget {
  AkunPage({Key? key}) : super(key: key);

  List mdiaccountItemList = [
    {'id': 1, 'groupBy': "Edit Profil "},
    {'id': 2, 'groupBy': "Saldo "},
    {'id': 3, 'groupBy': "Saldo "},
    {'id': 4, 'groupBy': "Saldo "}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 4.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h)),
                  SizedBox(height: 18.v),
                  Text("Hamba Allah",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer),
                  Text("hambaAllah@gmail.com",
                      style: CustomTextStyles.bodySmallGray800),
                  SizedBox(height: 23.v),
                  _buildMdiAccount(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 13.h, top: 17.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Akun"));
  }

  /// Section Widget
  Widget _buildMdiAccount(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: GroupedListView<dynamic, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements: mdiaccountItemList,
            groupBy: (element) => element['groupBy'],
            sort: false,
            groupSeparatorBuilder: (String value) {
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                  padding: EdgeInsets.all(11.h),
                  decoration: AppDecoration.outlineDeepOrangeA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: mdiAccount,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 4.h)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, top: 5.v),
                            child: Text(value,
                                style: theme.textTheme.titleSmall!
                                    .copyWith(color: appTheme.black900))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.adaptSize,
                            width: 24.adaptSize)
                      ]));
            },
            itemBuilder: (context, model) {
              return MdiaccountItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
