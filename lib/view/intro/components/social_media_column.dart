import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () =>
              launchUrl(Uri.parse('https://www.linkedin.com/in/hamad-anwar/')),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
            child: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              height: 15,
              width: 15,
            ),
          ),
        ),
        InkWell(
          onTap: () => launchUrl(Uri.parse('https://github.com/Hamad-Anwar')),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
            child: SvgPicture.asset(
              'assets/icons/github.svg',
              height: 15,
              width: 15,
            ),
          ),
        )
      ],
    );
  }
}
