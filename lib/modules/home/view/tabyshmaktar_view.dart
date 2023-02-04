import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class TabyshmaktarView extends StatelessWidget {
  const TabyshmaktarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 330, bottom: 10),
                child: Assets.icons.back.svg(fit: BoxFit.none),
              ),
              Assets.images.jomok22.image(),
              AppSpace.sized15,
              const Text(
                'Табышмактар',
                style: AppTextStyles.firetyles34Style,
              ),
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Күндүз жатып, түндө жүрөт,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Муну көргөн адам күлөт,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Айсыз караңгыда көзү көрөтч,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Муну көргөн адам күлөт?',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      subtitle: const Center(
                          child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 110),
                        child: Text('(Кучук)'),
                      )));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
