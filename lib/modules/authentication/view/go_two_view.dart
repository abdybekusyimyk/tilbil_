import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

import '../../../app/router/app_router.dart';

class GoTwoView extends StatefulWidget {
  const GoTwoView({Key? key}) : super(key: key);

  @override
  State<GoTwoView> createState() => _GoTwoViewState();
}

class _GoTwoViewState extends State<GoTwoView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushNamed(context, AppRouter.goRegis));
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
            Column(
              children: [
                Assets.images.logo.image(),
                const Text(
                  AppText.twoviewtext,
                  style: AppTextStyles.twoviewtextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Assets.images.oymo.image(),
          ],
        ),
      ),
    );
  }
}
