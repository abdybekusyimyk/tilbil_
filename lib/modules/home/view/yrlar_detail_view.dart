// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class YrlarDetailView extends StatelessWidget {
  YrlarDetailView({Key? key}) : super(key: key);

  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluebackround,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Assets.images.yrlardetail.image(
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
                              'Жөжөлөрүм',
                              style: TextStyle(
                                color: AppColors.blueblack,
                                fontSize: 40,
                                fontFamily: 'CormorantInfant',
                              ),
                            ),
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
                            // AppSpace.sized35,
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40, bottom: 15, right: 160),
                              child: Column(
                                children: const [
                                  Text('Obony E.Eralievanyky'),
                                  Text('Obony E.Eralievanyky'),
                                ],
                              ),
                            ),
                            // AppSpace.sized15,
                            ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, index) {
                                return ListTile(
                                    title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ));
                                // subtitle: const Center(
                                //     child: Padding(
                                //   padding:
                                //       EdgeInsets.only(top: 5, left: 110),
                                //   child: Text('(Кучук)'),
                                // )));
                              },
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
