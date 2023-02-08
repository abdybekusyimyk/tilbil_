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
import 'package:share_plus/share_plus.dart';
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
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.oymoysty.image(),
            Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRouter.weAbout),
                  child: Settinglist(
                    icon: Assets.icons.aboutUs.svg(),
                    text: AppText.weabout,
                    // onTap:
                  ),
                ),
                AppSpace.sized35,
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () async {
                    final urlLink =
                        'https://www.figma.com/file/Zcp5VnLggW2zRCzV02CKxY/Tilbil-app-design?node-id=0%3A1&t=ADq8dA411GtuGYQN-0';
                    await Share.share('${urlLink}');
                  },
                  child: Settinglist(
                    icon: Assets.icons.share.svg(),
                    text: AppText.share,
                  ),
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
