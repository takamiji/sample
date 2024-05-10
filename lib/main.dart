import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample/flavors.dart';
import 'app.dart';
import 'package:sample/gen/firebase_options_dev.dart' as dev;
import 'package:sample/gen/firebase_options_prod.dart' as prod;

FutureOr<void> main() async {
  final flavor = F.appFlavor;
  final options = flavor == Flavor.dev
      ? dev.DefaultFirebaseOptions.currentPlatform
      : prod.DefaultFirebaseOptions.currentPlatform;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: options,
  );

  runApp(const App());
}
