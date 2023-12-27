import '../penggalangan_dana_screen/widgets/dynamicview_item_widget.dart';
import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/presentation/aktivitas_page/aktivitas_page.dart';
import 'package:dermarasa/presentation/akun_page/akun_page.dart';
import 'package:dermarasa/presentation/beranda_page/beranda_page.dart';
import 'package:dermarasa/presentation/pesan_page/pesan_page.dart';
import 'package:dermarasa/widgets/app_bar/appbar_leading_image.dart';
import 'package:dermarasa/widgets/app_bar/appbar_title.dart';
import 'package:dermarasa/widgets/app_bar/custom_app_bar.dart';
import 'package:dermarasa/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PenggalanganDanaScreen extends StatelessWidget {
  PenggalanganDanaScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildDynamicView(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 19.h, right: 32.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90016x16,
            margin: EdgeInsets.only(left: 18.h, top: 15.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Penggalangan Dana ", margin: EdgeInsets.only(left: 25.h)));
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 288.v,
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return DynamicviewItemWidget();
            }));
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
