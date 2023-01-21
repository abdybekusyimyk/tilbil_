import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class WeaboutView extends StatelessWidget {
  const WeaboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Assets.icons.back.svg(fit: BoxFit.scaleDown),
        title: const Text(
          'Биз жөнүндө',
          style: TextStyle(
              color: AppColors.blueblack,
              fontFamily: 'CormorantInfant',
              fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            AppSpace.sized30,
            Container(
              width: 350,
              height: 400,
              color: Colors.white,
              child: const Text(AppText.weaboutview,
                  style: AppTextStyles.weaboutviewStyle),
            )
          ],
        ),
      ),
    );
  }
}
