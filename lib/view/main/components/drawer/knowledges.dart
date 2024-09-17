import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: darkColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 2),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check.svg'),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              const Text('Flutter, Dart'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 2),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check.svg'),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              const Text('Networking, Cyber Security'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding / 2),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check.svg'),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              const Text('Git, Github'),
            ],
          ),
        )
      ],
    );
  }
}
