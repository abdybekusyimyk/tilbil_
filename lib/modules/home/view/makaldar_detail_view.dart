import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class MakaldarDetailView extends StatelessWidget {
  const MakaldarDetailView({Key? key}) : super(key: key);

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
              Assets.images.makaldarditeil.image(),
              AppSpace.sized15,
              const Text(
                'Мекен, эл, жер',
                style: AppTextStyles.firetyles34Style,
              ),
              AppSpace.sized15,
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                      title: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Жакшыдан башчы койсоң, элди түзөтөөр,',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Жамандан башчы койсоң, элди жүдөтөөр.',
                          style: TextStyle(fontSize: 14),
                        ),
                        // Text(
                        //   'Биздин жердеги аркарлар марчага марчалабай,',
                        //   style: TextStyle(fontSize: 14),
                        // ),
                        // Text(
                        //   'Кимдин жериндеги аркарлар марчага марчалайт?',
                        //   style: TextStyle(fontSize: 14),
                        // ),
                      ],
                    ),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
