import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';

class FairryTalesDetailView extends StatelessWidget {
  FairryTalesDetailView({Key? key}) : super(key: key);

  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Assets.images.akylduuBala.image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Assets.icons.back.svg(fit: BoxFit.none),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 360),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(55),
                          topLeft: Radius.circular(55),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            const Text(
                              AppText.akylduubala,
                              style: TextStyle(
                                color: AppColors.blueblack,
                                fontSize: 40,
                                fontFamily: 'CormorantInfant',
                              ),
                            ),
                            // AppSpace.sized10,
                            // const Text(
                            //   'Кыргыз эл жомогу',
                            //   style: TextStyle(
                            //     color: AppColors.blueblack,
                            //     fontSize: 20,
                            //     fontFamily: 'CormorantInfant',
                            //   ),
                            // ),
                            AppSpace.sized15,
                            Slider(
                              // divisions: 200,

                              activeColor: AppColors.blueblack,
                              thumbColor: AppColors.blueblack,
                              label: currentSliderValue.toString(),

                              inactiveColor:
                                  const Color.fromARGB(255, 195, 224, 224),
                              value: currentSliderValue,
                              min: 0.0,
                              max: 200,
                              // ignore: unnecessary_parenthesis
                              onChanged: ((value) {
                                currentSliderValue = value;
                              }),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '00:20',
                                  style: TextStyle(
                                      color: AppColors.blueblack, fontSize: 10),
                                ),
                                SizedBox(width: 240),
                                Text(
                                  '02:20',
                                  style: TextStyle(
                                      color: AppColors.blueblack, fontSize: 10),
                                ),
                              ],
                            ),
                            AppSpace.sized25,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Assets.icons.backItalic.svg(),
                                Assets.icons.play.svg(),
                                Assets.icons.forwardItalic.svg(),
                              ],
                            ),
                            AppSpace.sized35,
                            const Text(
                              'Бир күнү акылман арабага түшүп келе жатты. Ал араба-сын токтото калып эңкейип караса, жолдо кичинекей бала шаар жасап, ойноп отуруптур. Акылман:‒ Балам, арабага жол бербейсиңби? ‒ деди. Бала акылмандын баш-аягына карап туруп: ‒ Чоң ата, мен шаар салып жатпаймынбы? Шаар араба-га жол бербейт. Араба шаарды айланып өтүшү керек го, ‒ деди. Акылман абдан таң калды. Арабадан түшүп келип:‒ Балам, жашыңа караганда акылың көп экен, ‒ деди. Анда бала:‒ Эмне үчүн андай дейсиз? Коёндун бөжөгү үч күндөнкийин жүгүрүп кетет. Жети жашка келгиче мен кантип бирнерсени билбейин, Z‒ дейт. Акылман жылмайып:‒ Мен сага бир нече суроо берейин. Жооп берсең, бирнерсе билериңе ишенейин, ‒ дейт.‒ Жооп берүүгө даярмын, ‒ дейт бала. Кандай сууда балык болбойт? Кандай тоодо таш болбойт? Кандай жыгачта бутак болбойт? Ушуларга жооп берчи, ‒ дейт акылман. Булактын суусунда балык болбойт. Кум дөбөдө таш болбойт. Чирик жыгачта бутак болбойт ‒ деп бала жооп берет. Бала да акылманга суроо берет:‒ Чоң ата, асманда канча жылдыз бар? ‒ дейт. ‒ Айланайын балам, бизден ыраак турган нерсени сураганың кандай? Бизге жакын турган нерседен сура. ‒ Андай болсо, сиздин кашыңызда нече тал кыл бар? ‒деп сурайт.Кичинекей баланын акылына акылман абдан таң калып: ‒ Балам, окууну көп оку. Акылың дагы арбыйт. Өмүрүң узун болсун! ‒ деп ак батасын берип, баланын шаарын айланып өтүптүр.',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.blueblack,
                                  fontSize: 15,
                                  fontFamily: 'Gabriela'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:tilbil/constants/assets/assets_gen.dart';
// import 'package:tilbil/theme/custom/color/custom_color.dart';

// class FairryTalesDetailView extends StatelessWidget {
//   const FairryTalesDetailView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       body: SafeArea(
//           child: Column(
//         children: [
//           Stack(
//             children: [
//               Assets.images.akylduuBala.image(
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//               Positioned(
//                 bottom: 10,
//                 child: Container(
//                   width: double.infinity,
//                   height: 600,
//                   decoration: const BoxDecoration(
//                     color: AppColors.blueblack,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(55),
//                       topLeft: Radius.circular(55),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Text('text'),
//                       Text('text'),
//                       Text('text'),
//                       Text('text'),
//                       Text('text'),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       )),
//     );
//   }
// }
