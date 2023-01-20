import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tilbil'),
          Assets.images.logo.image(),
        ],
      )),
    );
  }
}
