import 'package:dermarasa/core/app_export.dart';
import 'package:dermarasa/presentation/aktivitas_page/aktivitas_page.dart';
import 'package:dermarasa/presentation/akun_page/akun_page.dart';
import 'package:dermarasa/presentation/beranda_page/beranda_page.dart';
import 'package:dermarasa/presentation/pesan_page/pesan_page.dart';
import 'package:dermarasa/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BerandaContainerScreen extends StatelessWidget {
  BerandaContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.berandaPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 21.h, right: 30.h),
                child: _buildBottomBar(context))));
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
}
