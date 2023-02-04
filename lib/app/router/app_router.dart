import 'package:flutter/cupertino.dart';
import 'package:tilbil/modules/home/view/home_view.dart';

import '../../modules/categorys/view/categorys_detail_element_view.dart';
import '../../modules/categorys/view/categorys_detail_view.dart';
import '../../modules/categorys/view/categorys_view.dart';
import '../../modules/fairy_tales/view/fairry_tales_detail_view.dart';
import '../../modules/fairy_tales/view/fairy_tales_view.dart';
import '../../modules/home/view/janylmachtar_view.dart';
import '../../modules/home/view/makaldar_detail_view.dart';
import '../../modules/home/view/makaldar_view.dart';
import '../../modules/home/view/manas_detail_view.dart';
import '../../modules/home/view/manas_view.dart';
import '../../modules/home/view/tabyshmaktar_view.dart';
import '../../modules/home/view/yrlar_detail_view.dart';
import '../../modules/home/view/yrlar_view.dart';
import '../../modules/settings/view/profil_view.dart';
import '../../modules/settings/view/weabout_view.dart';

class AppRouter {
  const AppRouter();

  static const String main = '/';
  static const String home = '/home';
  static const String janylmachtar = '/janylmachtar';
  static const String makaldar = '/makaldar';
  static const String makaldarDetail = '/makaldarDetail';
  static const String manas = '/manas';
  static const String manasDetail = '/manasDetail';
  static const String tabyshmaktar = '/tabyshmaktar';
  static const String yrlar = '/yrlar';
  static const String yrlarDetail = '/yrlarDetail';

  static const String authentication = '/authentication';

  static const String category = '/category';
  static const String categoryDetailElement = '/categoryDetailElement';
  static const String categoryDetail = '/categoryDetail';
  static const String fairyTales = '/fairyTales';
  static const String fairyTalesDetail = '/fairyTalesDetail';

  static const String setting = '/setting';
  static const String profil = '/profil';
  static const String weAbout = '/weAbout';

  static Route<void> onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case home:
        return CupertinoPageRoute(
          builder: (_) => const HomeView(),
          settings: settings,
        );
      case janylmachtar:
        return CupertinoPageRoute(
          builder: (_) => const JanylmachtarView(),
          settings: settings,
        );
      case makaldar:
        return CupertinoPageRoute(
          builder: (_) => const MakaldarView(),
          settings: settings,
        );
      case makaldarDetail:
        return CupertinoPageRoute(
          builder: (_) => const MakaldarDetailView(),
          settings: settings,
        );
      case manas:
        return CupertinoPageRoute(
          builder: (_) => const ManasView(),
          settings: settings,
        );
      case manasDetail:
        return CupertinoPageRoute(
          builder: (_) => const ManasDetailView(),
          settings: settings,
        );
      case tabyshmaktar:
        return CupertinoPageRoute(
          builder: (_) => const TabyshmaktarView(),
          settings: settings,
        );
      case yrlar:
        return CupertinoPageRoute(
          builder: (_) => const YrlarView(),
          settings: settings,
        );
      case yrlarDetail:
        return CupertinoPageRoute(
          builder: (_) => YrlarDetailView(),
          settings: settings,
        );
      case category:
        return CupertinoPageRoute(
          builder: (_) => const CategorysView(),
          settings: settings,
        );
      case categoryDetail:
        return CupertinoPageRoute(
          builder: (_) => const CategorysDetailView(),
          settings: settings,
        );
      case categoryDetailElement:
        return CupertinoPageRoute(
          builder: (_) => const CategorysDetailElementView(),
          settings: settings,
        );
      case fairyTales:
        return CupertinoPageRoute(
          builder: (_) => const FairyTalesView(),
          settings: settings,
        );
      case fairyTalesDetail:
        return CupertinoPageRoute(
          builder: (_) => FairryTalesDetailView(),
          settings: settings,
        );
      case profil:
        return CupertinoPageRoute(
          builder: (_) => const ProfilView(),
          settings: settings,
        );
      case weAbout:
        return CupertinoPageRoute(
          builder: (_) => const WeaboutView(),
          settings: settings,
        );

      default:
        throw Exception(
            'no builder specified for route named: [${settings.name}]');
    }
  }
}
