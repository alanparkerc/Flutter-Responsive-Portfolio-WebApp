import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/image_viewer.dart';
import 'package:flutter_portfolio/view/projects/components/project_detail.dart';
import '../../main/models.dart';
import '../../../constants.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  const ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
            ),
            child: InkWell(
              onTap: () {
                ImageViewer(context, projectList[index].image);
              },
              borderRadius: BorderRadius.circular(30),
              child: AnimatedContainer(
                padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    top: defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: darkColor),
                duration: const Duration(milliseconds: 500),
                child: ProjectDetail(
                  index: index,
                ),
              ),
            ));
      },
    );
  }
}
