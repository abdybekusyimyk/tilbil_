import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/modules/fairy_tales/view/fairy_tales_view.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

class ManasView extends StatelessWidget {
  const ManasView({Key? key}) : super(key: key);

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
              Assets.images.manas.image(),
              AppSpace.sized20,
              const Text(
                'Манас',
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
                      onDoubleTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Ghj(),
                        //   ),
                        // );
                      },
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
