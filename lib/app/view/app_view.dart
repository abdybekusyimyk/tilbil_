import 'package:flutter/material.dart';
import 'package:tilbil/modules/authentication/view/go_name_view.dart';
import 'package:tilbil/modules/authentication/view/go_one_view.dart';
import 'package:tilbil/modules/authentication/view/go_regis_view.dart';
import 'package:tilbil/modules/authentication/view/go_two_view.dart';
import 'package:tilbil/modules/categorys/view/categorys_view.dart';
import 'package:tilbil/modules/home/view/home_view.dart';
import 'package:tilbil/modules/settings/view/profil_view.dart';
import 'package:tilbil/modules/settings/view/weabout_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tilbil',
      theme: ThemeData(backgroundColor: Colors.teal),
      // home: const HomeView(),
      home: const CategorysView(),
      // home: const GoOneView(),
      // home: const GoTwoView(),
      // home: const GoRegisView(),
      // home: const GoNameView(),
      // home: const ProfilView(),
      // home: const WeaboutView(),
    );
  }
}
