import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          // 'I\'m capable of creating excellent mobile apps, handling${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.',
          '👋 Welcome! I\'m a front-end developer and web designer ${Responsive.isLargeMobile(context) ? '\n' : ''}with a strong ${!Responsive.isLargeMobile(context) ? '\n' : ''}foundation in software engineering.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: darkColor, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
