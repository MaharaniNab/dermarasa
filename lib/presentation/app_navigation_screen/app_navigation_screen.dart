import 'package:dermarasa/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame TwentyEight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Masuk",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.masukScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Daftar Akun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.daftarAkunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Beranda - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.berandaContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Penggalangan Dana",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.penggalanganDanaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transaksi",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transaksiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profil",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfilScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
