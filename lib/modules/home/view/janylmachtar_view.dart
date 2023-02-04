import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class JanylmachtarView extends StatelessWidget {
  const JanylmachtarView({Key? key}) : super(key: key);

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
              Assets.images.janyldetail.image(),
              AppSpace.sized15,
              const Text(
                'Жаңылмачтар',
                style: AppTextStyles.firetyles34Style,
              ),
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                // prototypeItem: ListTile(
                //   title: Text('text '),
                // ),
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
                              'Эртең аркарлар марчага марчалайт,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Эртең аркарлар марчага марчаласа,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Биздин жердеги аркарлар марчага марчалабай,',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Кимдин жериндеги аркарлар марчага марчалайт?',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      subtitle: const Center(
                          child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('* * *'),
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
