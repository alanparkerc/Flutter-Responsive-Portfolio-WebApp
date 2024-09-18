import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main/models.dart';
import '../../constants.dart';

class CertificateGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  const CertificateGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: achievementList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(30),
              child: AnimatedContainer(
                  padding: const EdgeInsets.all(defaultPadding),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent),
                  duration: const Duration(milliseconds: 500),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          achievementList[index].name,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          achievementList[index].organization,
                          style: const TextStyle(color: Colors.amber),
                        ),
                        Text(
                          achievementList[index].date,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                        Text.rich(
                          maxLines: 1,
                          TextSpan(
                              text: 'Skills: ',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: achievementList[index].skills,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis),
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(
                                Uri.parse(achievementList[index].credential));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Credentials',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  CupertinoIcons.arrow_turn_up_right,
                                  color: Colors.white,
                                  size: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ));
      },
    );
  }
}
