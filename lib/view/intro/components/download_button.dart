import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(
            'https://drive.google.com/file/d/1HSIe7rdk8VtrAL4DQuybfMHQgDrQ6xNs/view?usp=sharing'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: defaultPadding / 3,
            ),
            const Icon(
              FontAwesomeIcons.download,
              color: Colors.white70,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
