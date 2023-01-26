import 'package:flutter/material.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class Settinglist extends StatelessWidget {
  const Settinglist({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final dynamic icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            child: Row(
              children: [
                icon,
                AppSpace.sizedW25,
                Text(
                  text,
                  style: AppTextStyles.settings,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.2,
            indent: 50,
            endIndent: 60,
            color: AppColors.blueblack,
          ),
        ],
      ),
    );
  }
}
