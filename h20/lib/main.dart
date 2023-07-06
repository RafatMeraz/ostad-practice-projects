import 'package:flutter/material.dart';
import 'package:h20/presentation/app.dart';

import 'dependency_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(const H2OApp());
}