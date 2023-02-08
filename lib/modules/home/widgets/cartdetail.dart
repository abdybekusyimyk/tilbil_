import 'package:flutter/material.dart';
import 'package:tilbil/app/router/app_router.dart';
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
                onTap: () => Navigator.pushNamed(context, AppRouter.fairyTales),
              ),
              Element(
                text: 'Жаңылмачтар',
                image: Assets.images.janylmachtar.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.janylmachtar),
              ),
              Element(
                text: 'Ырлар',
                image: Assets.images.yrlar.image(),
                onTap: () => Navigator.pushNamed(context, AppRouter.yrlar),
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
                onTap: () => Navigator.pushNamed(context, AppRouter.manas),
              ),
              Element(
                text: 'Макалдар',
                image: Assets.images.sabaktar.image(),
                onTap: () => Navigator.pushNamed(context, AppRouter.makaldar),
              ),
              Element(
                text: 'Табышмактар',
                image: Assets.images.tabyshmak.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.tabyshmaktar),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Element extends StatelessWidget {
  const Element({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });

  final String text;
  final dynamic image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
