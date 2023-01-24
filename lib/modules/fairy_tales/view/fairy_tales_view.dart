import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class FairyTalesView extends StatelessWidget {
  const FairyTalesView({Key? key}) : super(key: key);

//  int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Assets.icons.back.svg(fit: BoxFit.none),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSpace.sized15,
            Assets.images.jomok22.image(),
            AppSpace.sized20,
            const Text(
              'Жомоктор',
              style: TextStyle(
                  fontSize: 36,
                  color: AppColors.blueblack,
                  fontFamily: 'CormorantInfant'),
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
                    onDoubleTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const Ghj(),
                      //   ),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        appTextJomoktor[index],
                        style: const TextStyle(
                            fontSize: 20,
                            color: AppColors.blueblack,
                            fontFamily: 'CormorantInfant'),
                      ),
                    ),
                  ),
                  subtitle: const Divider(
                    thickness: 1.2,
                    indent: 25,
                    endIndent: 25,
                    color: AppColors.blueblack,
                    height: 20,
                  ),
                );
              },
            ),
          ],
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
