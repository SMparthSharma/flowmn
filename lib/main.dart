import 'package:flowmn/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';

import 'core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme:AppTheme.lightTheme,

      home: SplashPage(),
    );
  }
}

