import 'package:flutter/material.dart';
import 'package:tilbil/app/router/app_router.dart';
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
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Сандар',
                image: Assets.images.sandar.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Үй жаныбарлары',
                image: Assets.images.kozu.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
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
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Унаалар',
                image: Assets.images.kamaz.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Дене мүчөлөр',
                image: Assets.images.denemuch.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
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
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Жер жемиштер',
                image: Assets.images.jerjemish.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
              Element(
                text: 'Мөмө жемиштер',
                image: Assets.images.momojemish.image(),
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.categoryDetail),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Element extends StatelessWidget {
  const Element(
      {super.key, required this.text, required this.image, this.onTap});

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
          children: [
            image,
            Text(
              text,
              style: AppTextStyles.detailcartStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
