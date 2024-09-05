import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Flutter ', isDark: true),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Flutter ', isDark: true),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Flutter ', isDark: true),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Flutter ', isDark: true),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30,
                    end: 40,
                    text: 'Developer ',
                    gradient: true,
                    isDark: false),
                largeMobile: AnimatedSubtitleText(
                    start: 30,
                    end: 25,
                    text: 'Developer ',
                    gradient: true,
                    isDark: false),
                mobile: AnimatedSubtitleText(
                    start: 25,
                    end: 20,
                    text: 'Developer ',
                    gradient: true,
                    isDark: false),
                tablet: AnimatedSubtitleText(
                    start: 40,
                    end: 30,
                    text: 'Developer ',
                    gradient: true,
                    isDark: false),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30,
                      end: 40,
                      text: 'Developer ',
                      gradient: false,
                      isDark: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30,
                      end: 25,
                      text: 'Developer ',
                      gradient: false,
                      isDark: false),
                  mobile: AnimatedSubtitleText(
                      start: 25,
                      end: 20,
                      text: 'Developer ',
                      gradient: true,
                      isDark: false),
                  tablet: AnimatedSubtitleText(
                      start: 40,
                      end: 30,
                      text: 'Developer ',
                      gradient: false,
                      isDark: false),
                ),
              ))
      ],
    );
  }
}
