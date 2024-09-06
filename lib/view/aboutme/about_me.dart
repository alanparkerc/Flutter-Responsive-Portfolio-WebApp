import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/aboutme_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/aboutme/components/title_text.dart';
import 'package:get/get.dart';

class AboutMeView extends StatelessWidget {
  AboutMeView({super.key});
  final controller = Get.put(AboutMeController());
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
          const TitleText(prefix: 'About', title: 'Me'),
          const SizedBox(
            height: defaultPadding,
          ),
          const Expanded(child: Text('plaeholder'))
        ],
      ),
    );
  }
}
