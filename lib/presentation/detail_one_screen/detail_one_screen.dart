import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DetailOneScreen extends StatelessWidget {
  const DetailOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  _buildOneStack(context),
                  _buildFrameColumn(context),
                  SizedBox(height: 12.v),
                  _buildFrameColumn1(context),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Cerita Penggalangan Dana",
                              style: CustomTextStyles.titleSmallBold))),
                  SizedBox(height: 5.v),
                  Container(
                      width: 332.h,
                      margin: EdgeInsets.only(left: 12.h, right: 15.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    "\"Jalinan Baik: Ajakan Donasi untuk Masjid Barokah\"\n",
                                style: theme.textTheme.titleSmall),
                            TextSpan(
                                text: "\n",
                                style: CustomTextStyles.titleSmallRoboto_1),
                            TextSpan(
                                text:
                                    "Di desa kami, harapan mengembang seiring angin. Kami bermimpi memiliki Masjid Barokah, sebuah tempat ibadah yang akan merangkul seluruh komunitas. \n\nKami berbagi cerita melalui media sosial dengan tagar #BangunMasjidBarokah. Barang-barang sumbangan dijual di pasar amal untuk mendukung dana. Kami juga menyambangi rumah ke rumah untuk mengajak bergabung.\n\nDonasi Anda, sekecil apapun, akan memberikan kontribusi besar dalam mewujudkan mimpi kami. Mari bersama-sama membangun Masjid Barokah sebagai tanda kebersamaan dan cinta di desa kami.",
                                style: theme.textTheme.bodySmall)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildDonasiSekarangButton(context)));
  }

  /// Section Widget
  Widget _buildOneStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3463854,
              height: 180.v,
              width: 360.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftBlack900,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 3.h, top: 3.v),
              onTap: () {
                onTapImgArrowLeft(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Pembangunan Masjid Barokah",
              style: theme.textTheme.titleMedium),
          SizedBox(height: 9.v),
          Text("Rp 50.243.675", style: CustomTextStyles.titleSmallPrimary),
          SizedBox(height: 4.v),
          Align(
              alignment: Alignment.centerRight,
              child: Text("14 Hari lagi",
                  style: CustomTextStyles.labelLargeBluegray400)),
          Container(
              height: 5.v,
              width: 342.h,
              decoration: BoxDecoration(color: appTheme.deepOrange200),
              child: ClipRRect(
                  child: LinearProgressIndicator(
                      value: 0.48,
                      backgroundColor: appTheme.deepOrange200,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary))))
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack9001,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Penggalang Dana", style: theme.textTheme.bodySmall),
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse5,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                radius: BorderRadius.circular(15.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 5.h, top: 8.v, bottom: 6.v),
                                child: Text("Comforma Berbagi",
                                    style: theme.textTheme.labelLarge)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMaterialSymbolsVerified,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v)),
                            Spacer(),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgMaterialSymbolsChatOutline,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 6.v))
                          ]))),
              SizedBox(height: 6.v)
            ]));
  }

  /// Section Widget
  Widget _buildDonasiSekarangButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Donasi Sekarang",
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 18.v),
        buttonTextStyle: theme.textTheme.labelLarge!,
        onPressed: () {
          onTapDonasiSekarangButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the transaksiScreen when the action is triggered.
  onTapDonasiSekarangButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transaksiScreen);
  }
}
