import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class GoRegisView extends StatelessWidget {
  const GoRegisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Assets.images.oymoysty.image(),
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 330,
                  height: 250,
                  decoration: BoxDecoration(
                    color: AppColors.bluegeern,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppSpace.sized10,
                      const Text(
                        AppText.singup,
                        style: AppTextStyles.signuptextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              AppText.inputname,
                              style: AppTextStyles.inputnameStyle,
                            ),
                            AppSpace.sized5,
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Ысым',
                                hintStyle: TextStyle(color: Colors.black26),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 50),
                        ),
                        child: const Text(
                          'Улантуу',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -110,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Assets.images.logo.image(
                        width: 140,
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            Assets.images.oymo.image()
          ],
        ),
      ),
    );
  }
}
