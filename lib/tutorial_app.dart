import 'package:flutter/material.dart';
import 'package:tutorial/constants/app_constants.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/features/home/home_screen.dart';
import 'package:tutorial/features/intro/intro_screen.dart';
import 'package:tutorial/services/storage_service.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/utils/keys.dart';

class TutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var intro = sl<StorageService>().intro;
    return MaterialApp(
      color: primary,
      title: APP_NAME,
      home: intro ? HomeScreen() : IntroScreen(),
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
