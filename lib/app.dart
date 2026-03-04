import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:candy_smash/core/theme/custom_theme.dart';
import 'package:candy_smash/core/routing/app_router.dart';

class CandySmashApp extends StatelessWidget {
  const CandySmashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Candy Smash',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
    );
  }
}