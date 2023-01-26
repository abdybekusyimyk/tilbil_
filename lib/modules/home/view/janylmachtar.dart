import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class Janylmachtar extends StatelessWidget {
  const Janylmachtar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 330, bottom: 10),
              child: Assets.icons.back.svg(fit: BoxFit.none),
            ),
            Assets.images.janyldetail.image(),
            AppSpace.sized15,
            Text(
              'Жаңылмачтар',
              style: TextStyle(
                  fontSize: 40,
                  color: AppColors.blueblack,
                  fontFamily: 'CormorantInfant'),
            ),
            AppSpace.sized25,
            Text(
              '''                  Эртең аркарлар марчага марчалайт,
                  Эртең аркарлар марчага марчаласа,
                  Биздин жердеги аркарлар марчага марчалабай,
                  Кимдин жериндеги аркарлар марчага ?
                        ''',
              textAlign: TextAlign.start,
            ),
            Text(
              '* * *',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '''Көп көпөлөк көкөлөп өтөт,
Көп көпөлөк көкөлөп өтөт,
 Төрт көпөлөк бөлөк өтөт.''',
              textAlign: TextAlign.start,
            ),
            Text(
              '* * *',
              style: TextStyle(fontSize: 14),
            ),
            Text('''                   Былкы-былкы былкы таш,
                    Былкылдаган кызыл таш,
                    Таар токум чаар таш,
                    Тайгаланма кара таш.
      
                          '''),
            Text(
              '* * *',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
