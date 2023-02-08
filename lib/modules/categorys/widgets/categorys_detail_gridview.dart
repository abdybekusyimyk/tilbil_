import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

import '../../../app/router/app_router.dart';

class CategorysDetailGridview extends StatelessWidget {
  const CategorysDetailGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 25,
        mainAxisExtent: 185,
      ),
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, AppRouter.categoryDetailElement),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 1,
                  offset: Offset(0, 6),
                )
              ],
              border: Border.all(width: 0.4, color: Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Assets.images.kozu.image(),
            ),
          ),
        );
      },
    );
  }
}
