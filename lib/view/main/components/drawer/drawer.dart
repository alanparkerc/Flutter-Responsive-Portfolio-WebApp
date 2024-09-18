import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio/view/main/components/drawer/personal_info.dart';
import '../../../../constants.dart';
import 'knowledges.dart';
import 'about.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PersonalInfo(),
                    Column(
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
                                  'assets/icons/sql.png',
                                  height: 15,
                                  width: 15,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'SQL',
                                  style: TextStyle(color: darkColor),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
