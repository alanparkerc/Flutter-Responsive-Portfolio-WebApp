import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '(949) 510 - 0546'),
        AreaInfoText(title: 'Email', text: 'alanparkerc@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@chase-a-parker'),
        AreaInfoText(title: 'Github', text: '@alanparkerc'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Languages',
          style: TextStyle(color: darkColor),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
