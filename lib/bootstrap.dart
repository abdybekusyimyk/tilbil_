import 'package:tilbil/app/view/app_view.dart';

import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

Future<void> bootstrap() async {
  await runZonedGuarded(
    () async => runApp(const MyApp()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
