// import 'package:flutter/material.dart';

// class ProfilView extends StatelessWidget {
//   const ProfilView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: const [
//           //  Image.asset(
//           //   'assets/images/oymoysty.png',
//           // ),
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(horizontal: 45),
//           //   child: Column(
//           //     children: [
//           //       InfoWidget(
//           //         icon: SvgPicture.asset('assets/icons/biz.svg'),
//           //         text: 'Биз жөнүндө',
//           //       ),
//           //       AppSpace.sized25,
//           //       InfoWidget(
//           //         icon: SvgPicture.asset('assets/icons/like.svg'),
//           //         text: 'Кайтарым байланыш',
//           //       ),
//           //       AppSpace.sized25,
//           //       InfoWidget(
//           //         icon: SvgPicture.asset('assets/icons/jonot.svg'),
//           //         text: 'Бөлүшүү',
//           //       ),
//           //       AppSpace.sized25,
//           //       InfoWidget(
//           //         icon: SvgPicture.asset('assets/icons/setg.svg'),
//           //         text: 'Орнотуулар',
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Image.asset(
//           //   'assets/images/oymo.png',
//           // ),
//         ],
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/modules/settings/widgets/sittinglist.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';
import 'package:tilbil/theme/custom/text/text.dart';
import 'package:tilbil/theme/custom/typography/typography.dart';

import '../../../app/router/app_router.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.oymoysty.image(),
            Column(
              children: [
                Settinglist(
                  icon: Assets.icons.aboutUs.svg(),
                  text: AppText.weabout,
                  onTap: () => Navigator.pushNamed(context, AppRouter.weAbout),
                ),
                AppSpace.sized35,
                Settinglist(
                  icon: Assets.icons.share.svg(),
                  text: AppText.share,
                  onTap: () => Navigator.pushNamed(context, AppRouter.weAbout),
                ),
              ],
            ),
            Assets.images.oymo.image(),
          ],
        ),
      ),
    );
  }
}
