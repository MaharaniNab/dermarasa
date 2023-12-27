import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget extends StatelessWidget {
  const DynamicviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3463846,
            height: 120.v,
            width: 206.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "Comforma Berbagi",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolsVerified,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 9.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 148.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Text(
              "Pembangunan Masjid\nBarokah",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallBold_1,
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Container(
                    height: 5.v,
                    width: 124.h,
                    decoration: BoxDecoration(
                      color: appTheme.deepOrange200,
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0.48,
                        backgroundColor: appTheme.deepOrange200,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "50%",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "Rp 50.243.675",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Container(
                  width: 50.h,
                  margin: EdgeInsets.only(left: 35.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "         14 \n",
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "Hari Lagi",
                          style: CustomTextStyles.bodySmallGray400,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
