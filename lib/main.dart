import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/aboutme/about_me.dart';
import 'package:flutter_portfolio/view/certifications/certifications.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          dialogBackgroundColor: bgColor,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 183, 118, 58)),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: bodyTextColor,
              )
              .copyWith(
                bodyLarge: const TextStyle(color: bodyTextColor),
                bodyMedium: const TextStyle(color: bodyTextColor),
              ),
        ),
        home: MainView(pages: [
          const Introduction(),
          ProjectsView(),
          Certifications(),
          AboutMeView(),
        ]));
  }
}
