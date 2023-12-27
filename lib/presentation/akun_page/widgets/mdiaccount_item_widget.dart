import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MdiaccountItemWidget extends StatelessWidget {
  const MdiaccountItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineDeeporangeA200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMdiAccount,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 7.v,
              bottom: 3.v,
            ),
            child: Text(
              "Edit Profil ",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 2.v,
            ),
            child: Text(
              "Rp 17.675.843",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
            ),
          ),
        ],
      ),
    );
  }
}
