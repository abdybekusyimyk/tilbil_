import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

import '../../../app/router/app_router.dart';

class YrlarView extends StatelessWidget {
  const YrlarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 330, bottom: 10),
                child: Assets.icons.back.svg(fit: BoxFit.none),
              ),
              Assets.images.yrlarbaldar.image(),
              AppSpace.sized20,
              const Text(
                'Ырлар',
                style: AppTextStyles.firetyles34Style,
              ),
              AppSpace.sized20,
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: appTextJomoktor.length,
                prototypeItem: ListTile(
                  title: Text(appTextJomoktor.first),
                ),
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRouter.yrlarDetail),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          appTextJomoktor[index],
                          style: AppTextStyles.firetelyStyle,
                        ),
                      ),
                    ),
                    subtitle: const Divider(
                      thickness: 1.2,
                      indent: 20,
                      endIndent: 20,
                      color: AppColors.blueblack,
                      height: 20,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppTextJomoktor {
  AppTextJomoktor._init();
  static const String jomoktor = 'Жомоктор';
  static const String akylduubala = 'Акылдуу бала';
  static const String altynkush = 'Алтын күш ';
  static const String chypalakbala = 'Чыпалак бала';
  static const String tulkuturna = 'Түлкү менен турна';
  static const String bulbul = 'Булбул';
  static const String myshykchychkan = 'Мышык менен чычкан';
  static const String jyldyzdar = 'Жылдыздар эмнеге учушат';
  static const String kalpaktahyxy = 'Калпак тарыхы';
  static const String yrys = 'Ырыс алды ынтымак';
  static const String topusun = 'Топусун жоготкон торгой';
  static const String buguene = 'Бугу эне';
  static const String komuz = 'Комуз';
  static const String akylkarachach = 'Акыл карачач';
  static const String abyshkadoo = 'Абышка менен дөө';
  static const String akmenenkara = 'Ак көңүл менен кара көңүл';
  static const String padyshnyn = 'Падышанын буйругу';
}

List<String> appTextJomoktor = [
  AppTextJomoktor.akylduubala,
  AppTextJomoktor.altynkush,
  AppTextJomoktor.chypalakbala,
  AppTextJomoktor.tulkuturna,
  AppTextJomoktor.bulbul,
  AppTextJomoktor.myshykchychkan,
  AppTextJomoktor.jyldyzdar,
  AppTextJomoktor.kalpaktahyxy,
  AppTextJomoktor.yrys,
  AppTextJomoktor.topusun,
  AppTextJomoktor.buguene,
  AppTextJomoktor.komuz,
  AppTextJomoktor.akylkarachach,
  AppTextJomoktor.abyshkadoo,
  AppTextJomoktor.akmenenkara,
  AppTextJomoktor.padyshnyn,
];
