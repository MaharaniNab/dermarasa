import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DonationformItemWidget extends StatelessWidget {
  const DonationformItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 39.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHeart11,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 39.h,
                child: Text(
                  "Buat\nDonasi ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
