import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class Categorycart extends StatelessWidget {
  const Categorycart({Key? key}) : super(key: key);

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
                text: 'Тамгалар',
                image: Assets.images.ltamga.image(),
              ),
              Element(
                text: 'Сандар',
                image: Assets.images.sandar.image(),
              ),
              Element(
                text: 'Үй жаныбарлары',
                image: Assets.images.kozu.image(),
              ),
            ],
          ),
          AppSpace.sized10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Element(
                text: 'Токой жаныбарлары',
                image: Assets.images.tylky.image(),
              ),
              Element(
                text: 'Унаалар',
                image: Assets.images.kamaz.image(),
              ),
              Element(
                text: 'Дене мүчөлөр',
                image: Assets.images.denemuch.image(),
              ),
            ],
          ),
          AppSpace.sized10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Element(
                text: 'Үй бүлө',
                image: Assets.images.famale.image(),
              ),
              Element(
                text: 'Жер жемиштер',
                image: Assets.images.jerjemish.image(),
              ),
              Element(
                text: 'Мөмө жемиштер',
                image: Assets.images.momojemish.image(),
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
        children: [
          image,
          Text(
            text,
            style: AppTextStyles.detailcartStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
