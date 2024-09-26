import 'package:flutter/material.dart';
import 'package:tutorial/tutorial_app.dart';
import 'package:tutorial/utils/app_utils.dart';

import 'di.dart' as dependency_injection;

Future<void> main() async {
  await dependency_injection.init();
  WidgetsFlutterBinding.ensureInitialized();
  await portraitMode();
  runApp(TutorialApp());
}
