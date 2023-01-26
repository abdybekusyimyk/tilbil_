import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class Tabyshmaktar extends StatelessWidget {
  const Tabyshmaktar({Key? key}) : super(key: key);

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
            Assets.images.tabysh.image(),
            AppSpace.sized15,
            const Text(
              'Табышмактар',
              style: TextStyle(
                  fontSize: 40,
                  color: AppColors.blueblack,
                  fontFamily: 'CormorantInfant'),
            ),
            AppSpace.sized25,
            Text(
              '''          Эшигин жаппай эч качан,
Элейип дабыш тыншаган.
                                                             
                        ''',
              textAlign: TextAlign.start,
            ),
            Text(
              '(Кучук)',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '''Күндүз жатып, түндө жүрөт,
Муну көргөн адам күлөт
Айсыз караңгыда көзү көрөтч''',
              textAlign: TextAlign.start,
            ),
            Text(
              '(Жарганат)',
              style: TextStyle(fontSize: 14),
            ),
            Text('''   Көргүлөчү куйругун,
Куйругунан мурду узун,
Атын атап андан соң,
Тапкылачы тумшугун.

      
                          '''),
            Text(
              '(Көпөлөк)',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
