import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/generated/l10n.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.goRouter,
  });

  final GoRouter goRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData.light(),
      darkTheme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: AppColors.purpleBlue),
          unselectedIconTheme: IconThemeData(color: AppColors.black),
        ),
      ),
      localizationsDelegates: const [
        S.delegate,

      ],
      // builder: DevicePreview.appBuilder,
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
