import 'package:flutter/material.dart';
import 'package:dermarasa/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:dermarasa/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:dermarasa/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:dermarasa/presentation/frame_twentyeight_screen/frame_twentyeight_screen.dart';
import 'package:dermarasa/presentation/masuk_screen/masuk_screen.dart';
import 'package:dermarasa/presentation/daftar_akun_screen/daftar_akun_screen.dart';
import 'package:dermarasa/presentation/beranda_container_screen/beranda_container_screen.dart';
import 'package:dermarasa/presentation/detail_one_screen/detail_one_screen.dart';
import 'package:dermarasa/presentation/penggalangan_dana_screen/penggalangan_dana_screen.dart';
import 'package:dermarasa/presentation/transaksi_screen/transaksi_screen.dart';
import 'package:dermarasa/presentation/edit_profil_screen/edit_profil_screen.dart';
import 'package:dermarasa/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String frameTwentyeightScreen = '/frame_twentyeight_screen';

  static const String masukScreen = '/masuk_screen';

  static const String daftarAkunScreen = '/daftar_akun_screen';

  static const String berandaPage = '/beranda_page';

  static const String berandaContainerScreen = '/beranda_container_screen';

  static const String detailOneScreen = '/detail_one_screen';

  static const String penggalanganDanaScreen = '/penggalangan_dana_screen';

  static const String transaksiScreen = '/transaksi_screen';

  static const String pesanPage = '/pesan_page';

  static const String akunPage = '/akun_page';

  static const String editProfilScreen = '/edit_profil_screen';

  static const String aktivitasPage = '/aktivitas_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashOneScreen: (context) => SplashOneScreen(),
    splashTwoScreen: (context) => SplashTwoScreen(),
    splashThreeScreen: (context) => SplashThreeScreen(),
    frameTwentyeightScreen: (context) => FrameTwentyeightScreen(),
    masukScreen: (context) => MasukScreen(),
    daftarAkunScreen: (context) => DaftarAkunScreen(),
    berandaContainerScreen: (context) => BerandaContainerScreen(),
    detailOneScreen: (context) => DetailOneScreen(),
    penggalanganDanaScreen: (context) => PenggalanganDanaScreen(),
    transaksiScreen: (context) => TransaksiScreen(),
    editProfilScreen: (context) => EditProfilScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
