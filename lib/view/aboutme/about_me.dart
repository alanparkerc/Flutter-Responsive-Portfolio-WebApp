import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About Me',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: darkColor,
                    fontSize: !Responsive.isDesktop(context)
                        ? Responsive.isLargeMobile(context)
                            ? 20
                            : 30
                        : 50,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Expanded(child: Text('plaeholder'))
        ],
      ),
    );
  }
}
