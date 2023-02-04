import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tilbil/app/router/app_router.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/modules/home/widgets/cartdetail.dart';
import 'package:tilbil/modules/home/widgets/dot.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          AppSpace.sized20,
          Container(
            width: 360,
            height: 160,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(child: Assets.images.baldar.image()),
                  const Expanded(
                    child: Text(
                      AppText.homeAnimat,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.homeAnimaStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          AppSpace.sized5,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Dot(isCheck: true),
              Dot(isCheck: false),
              Dot(isCheck: false),
              Dot(isCheck: false),
              Dot(isCheck: false),
              Dot(isCheck: false)
            ],
          ),
          AppSpace.sized15,
          const Cartdetail()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        onTap: ((value) async {
          await Navigator.pushNamed(context, AppRouter.fairyTales);
        }),
        fixedColor: const Color(0xFF0E5EA3),
        unselectedItemColor: const Color(0xFF0E5EA3),
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: Colors.green,
            ),
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
            ),
            label: 'Үй',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/category.svg",
              color: const Color.fromARGB(255, 71, 192, 75),
            ),
            icon: SvgPicture.asset(
              "assets/icons/category.svg",
            ),
            label: 'Категориялар',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/faity_tailes.svg",
              color: Colors.green,
            ),
            icon: SvgPicture.asset(
              "assets/icons/faity_tailes.svg",
            ),
            label: 'Жомоктор',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              "assets/icons/profil.svg",
              color: Colors.green,
            ),
            icon: SvgPicture.asset(
              "assets/icons/profil.svg",
            ),
            label: 'Профиль',
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: Colors.red,
      //   // backgroundColor: Colors.red,
      //   selectedItemColor: Colors.red,
      //   // fixedColor: Colors.red,
      //   currentIndex: 0,
      //   iconSize: 20.0,
      //   items: const [
      //     BottomNavigationBarItem(
      //         label: 'ddd', icon: Icon(Icons.accessibility)),
      //     BottomNavigationBarItem(label: 'sss', icon: Icon(Icons.account_box)),
      //     BottomNavigationBarItem(label: 'ttt', icon: Icon(Icons.adb)),
      //     BottomNavigationBarItem(label: 'rrr', icon: Icon(Icons.menu))
      //   ],
      // ),
    );
  }
}
