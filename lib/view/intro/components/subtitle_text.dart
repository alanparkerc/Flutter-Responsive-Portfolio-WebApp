import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;
  final bool gradient;
  final bool isDark;

  const AnimatedSubtitleText({
    super.key,
    required this.start,
    required this.end,
    required this.text,
    this.gradient = false,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: isDark ? darkColor : Colors.white,
              fontWeight: FontWeight.w900,
              shadows: gradient
                  ? [
                      const Shadow(
                          color: Colors.pink,
                          offset: Offset(0, 2),
                          blurRadius: 10),
                      const Shadow(
                          color: Colors.pink,
                          offset: Offset(0, -2),
                          blurRadius: 10),
                    ]
                  : [],
              height: 0,
              fontSize: value),
        );
      },
    );
  }
}
