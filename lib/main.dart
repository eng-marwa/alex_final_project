import 'package:alex_final_project/app/bazar_app.dart';
import 'package:alex_final_project/core/di/module.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const BazarApp());
}
