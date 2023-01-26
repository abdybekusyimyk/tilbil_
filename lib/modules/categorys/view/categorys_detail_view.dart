import 'package:flutter/material.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/constants/spaces/space.dart';
import 'package:tilbil/modules/categorys/widgets/categorys_detail_gridview.dart';
import 'package:tilbil/theme/custom/color/custom_color.dart';

class CategorysDetailView extends StatelessWidget {
  const CategorysDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluebackround,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppSpace.sized40,
              const Text(
                'Үй жаныбарлары',
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Gabriela',
                    color: AppColors.sargich),
              ),
              AppSpace.sized40,
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(55),
                    topLeft: Radius.circular(55),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: CategorysDetailGridview(),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.red,
        // backgroundColor: Colors.red,
        selectedItemColor: Colors.red,
        // fixedColor: Colors.red,
        currentIndex: 0,
        iconSize: 20.0,
        items: const [
          BottomNavigationBarItem(
              label: 'ddd', icon: Icon(Icons.accessibility)),
          BottomNavigationBarItem(label: 'sss', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(label: 'ttt', icon: Icon(Icons.adb)),
          BottomNavigationBarItem(label: 'rrr', icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
