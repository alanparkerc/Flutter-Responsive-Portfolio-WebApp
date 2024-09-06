import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/flutter.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Flutter',
                  style: TextStyle(color: darkColor),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/dart.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Dart',
                  style: TextStyle(color: darkColor),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/firebase.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Firebase',
                  style: TextStyle(color: darkColor),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/dart.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Sqlite',
                  style: TextStyle(color: darkColor),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
