import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tilbil/constants/assets/assets_gen.dart';
import 'package:tilbil/modules/categorys/view/categorys_view.dart';
import 'package:tilbil/modules/fairy_tales/view/fairy_tales_view.dart';
import 'package:tilbil/modules/home/view/home_view.dart';
import 'package:tilbil/modules/settings/view/profil_view.dart';

import '../logic/main.cubit.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    // context.read<HomeCubit>().getData(context.read<AuthCubit>().state.user!.accessToken);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: const MainScreen([
        HomeView(),
        CategorysView(),
        FairyTalesView(),
        ProfilView(),
      ]),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen(this.items, {super.key});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[context.watch<MainCubit>().state],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: context.watch<MainCubit>().state,
        onTap: context.read<MainCubit>().change,
        fixedColor: const Color(0xFF0E5EA3),
        unselectedItemColor: const Color(0xFF0E5EA3),
        items: [
          BottomNavigationBarItem(
            activeIcon: Assets.icons.home.svg(color: Colors.green),
            icon: Assets.icons.home.svg(),
            label: 'Үй',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.icons.category.svg(color: Colors.green),
            icon: Assets.icons.category.svg(),
            label: 'Категориялар',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.icons.faityTailes.svg(color: Colors.green),
            icon: Assets.icons.faityTailes.svg(),
            label: 'Жомоктор',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.icons.profil.svg(color: Colors.green),
            icon: Assets.icons.profil.svg(),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
