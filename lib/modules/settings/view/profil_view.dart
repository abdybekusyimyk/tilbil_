import 'package:flutter/material.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          //  Image.asset(
          //   'assets/images/oymoysty.png',
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 45),
          //   child: Column(
          //     children: [
          //       InfoWidget(
          //         icon: SvgPicture.asset('assets/icons/biz.svg'),
          //         text: 'Биз жөнүндө',
          //       ),
          //       AppSpace.sized25,
          //       InfoWidget(
          //         icon: SvgPicture.asset('assets/icons/like.svg'),
          //         text: 'Кайтарым байланыш',
          //       ),
          //       AppSpace.sized25,
          //       InfoWidget(
          //         icon: SvgPicture.asset('assets/icons/jonot.svg'),
          //         text: 'Бөлүшүү',
          //       ),
          //       AppSpace.sized25,
          //       InfoWidget(
          //         icon: SvgPicture.asset('assets/icons/setg.svg'),
          //         text: 'Орнотуулар',
          //       ),
          //     ],
          //   ),
          // ),
          // Image.asset(
          //   'assets/images/oymo.png',
          // ),
        ],
      )),
    );
  }
}
