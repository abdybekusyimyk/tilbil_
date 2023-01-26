import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class GoNameView extends StatelessWidget {
  const GoNameView({Key? key}) : super(key: key);

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
                Assets.images.logo.image(width: 160),
                AppSpace.sized20,
                const Text(
                  'Салам,  Айнура',
                  style: AppTextStyles.welcome,
                ),
                AppSpace.sized15,
                const Text(
                  AppText.welcome,
                  style: AppTextStyles.welcome,
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
