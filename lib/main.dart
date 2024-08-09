import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:islami/moduls/quran/widgets/sura_details.dart';
import 'package:islami/moduls/splash_view.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeData.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LayOut.routeName: (context) => const LayOut(),
        // QuranView.routeName: (context) => const QuranView(),
        SuraDetails.routeName: (context) => const SuraDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
