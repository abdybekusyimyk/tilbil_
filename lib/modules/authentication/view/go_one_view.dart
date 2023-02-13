import 'package:flutter/material.dart';
import 'package:tilbil/app/router/app_router.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class GoOneView extends StatefulWidget {
  const GoOneView({Key? key}) : super(key: key);

  @override
  State<GoOneView> createState() => _GoOneViewState();
}

class _GoOneViewState extends State<GoOneView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushNamed(context, AppRouter.goTwo));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.oymoysty.image(),
            Assets.images.logo.image(),
            Assets.images.oymo.image(),
          ],
        ),
      ),
    );
  }
}
