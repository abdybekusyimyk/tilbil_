import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class CategorysDetailElementView extends StatelessWidget {
  const CategorysDetailElementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Assets.icons.back.svg(fit: BoxFit.none),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Assets.images.m.image(),
          AppSpace.sized10,
          const Text(
            'Түлкү',
            style: TextStyle(
                color: AppColors.picker, fontSize: 60, fontFamily: 'Gabriela'),
          ),
          AppSpace.sized20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Assets.icons.left.svg(),
              Assets.icons.play.svg(),
              Assets.icons.right.svg(),
            ],
          ),
          AppSpace.sized20,
        ],
      ),
    );
  }
}
