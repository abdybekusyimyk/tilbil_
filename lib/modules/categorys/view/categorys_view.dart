import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/modules/categorys/widgets/categorycart.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class CategorysView extends StatelessWidget {
  const CategorysView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluebackround,
      body: Column(
        children: [
          AppSpace.sized40,
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 15,
                right: -10,
                child: Assets.images.buluton.image(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Салам, Айнура', style: AppTextStyles.holloStyle),
                  Assets.images.balaKitep.image(),
                ],
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -50,
                left: -18,
                child: Assets.images.bulut.image(),
              ),
              SizedBox(
                width: 360,
                height: 45,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Assets.icons.search.svg(fit: BoxFit.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppSpace.sized25,
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [AppSpace.sized45, Categorycart()],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.red,
        // backgroundColor: Colors.red,
        selectedItemColor: Colors.red,
        // fixedColor: Colors.red,
        currentIndex: 0,
        iconSize: 20.0,
        items: const [
          BottomNavigationBarItem(
              label: 'ddd', icon: Icon(Icons.accessibility)),
          BottomNavigationBarItem(label: 'sss', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(label: 'ttt', icon: Icon(Icons.adb)),
          BottomNavigationBarItem(label: 'rrr', icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
