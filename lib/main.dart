// import 'package:tilbil/bootstrap.dart';

// Future<void> main() async => bootstrap();

import 'package:flutter/material.dart';
import 'package:tilbil/modules/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tilbil',
      theme: ThemeData(backgroundColor: Colors.red),
      home: const HomeView(),
    );
  }
}
