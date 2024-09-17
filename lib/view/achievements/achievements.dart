import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../view model/responsive.dart';
import 'achievement_grid.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});
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
                'Achievements & ',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: darkColor,
                    fontSize: !Responsive.isDesktop(context)
                        ? Responsive.isLargeMobile(context)
                            ? 20
                            : 30
                        : 50,
                    fontWeight: FontWeight.bold),
              ),
              kIsWeb && Responsive.isDesktop(context)
                  ? ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.pink,
                              Colors.cyanAccent,
                            ]).createShader(bounds);
                      },
                      child: Text(
                        'History',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Colors.black,
                                fontSize: !Responsive.isDesktop(context)
                                    ? Responsive.isLargeMobile(context)
                                        ? 20
                                        : 30
                                    : 50,
                                fontWeight: FontWeight.bold),
                      ),
                    )
                  : Text(
                      'History',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
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
          const Expanded(
              child: Responsive(
                  desktop: CertificateGrid(
                    crossAxisCount: 3,
                    ratio: 1.5,
                  ),
                  extraLargeScreen:
                      CertificateGrid(crossAxisCount: 4, ratio: 1.6),
                  largeMobile: CertificateGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: CertificateGrid(crossAxisCount: 1, ratio: 1.4),
                  tablet: CertificateGrid(
                    ratio: 1.7,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
