import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class Cartdetail extends StatelessWidget {
  const Cartdetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Element(
                text: 'Жомоктор',
                image: Assets.images.jomoktor.image(),
              ),
              Element(
                text: 'Жаңылмачтар',
                image: Assets.images.janylmachtar.image(),
              ),
              Element(
                text: 'Ырлар',
                image: Assets.images.yrlar.image(),
              ),
            ],
          ),
          AppSpace.sized10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Element(
                text: 'Манас',
                image: Assets.images.makaldar.image(),
              ),
              Element(
                text: 'Макалдар',
                image: Assets.images.sabaktar.image(),
              ),
              Element(
                text: 'Табышмактар',
                image: Assets.images.tabyshmak.image(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Element extends StatelessWidget {
  const Element({super.key, required this.text, required this.image});

  final String text;
  final dynamic image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 135,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.bluegeern,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [image, Text(text, style: AppTextStyles.detailcartStyle)],
      ),
    );
  }
}
