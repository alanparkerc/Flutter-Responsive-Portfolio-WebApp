import 'package:flutter/material.dart';

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Text('Chase Parker',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: const Color(0xFF191923),
                  fontWeight: FontWeight.w900,
                  height: 0,
                  fontSize: value));
        },
      );
    });
  }
}
