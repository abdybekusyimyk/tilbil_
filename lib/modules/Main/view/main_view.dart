import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tilbil/modules/Main/logic/main_cubit.dart';
import 'package:tilbil/modules/categorys/view/categorys_view.dart';
import 'package:tilbil/modules/home/view/home_view.dart';
import 'package:tilbil/modules/settings/view/profil_view.dart';



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
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: context.read<MainCubit>().change,
        selectedIndex: context.watch<MainCubit>().state,
        destinations: <Widget>[
          NavigationDestination(
            key: const Key('quran'),
            icon: const Icon(Icons.book_rounded),
            label: ''
          ),
          NavigationDestination(
            key: const Key('home'),
            icon: const Icon(Icons.home),
            label: ''
          ),
          NavigationDestination(
            key: const Key('profile'),
            icon: const Icon(Icons.person),
            label: ''
          ),
        ],
      ),
    );
  }
}
