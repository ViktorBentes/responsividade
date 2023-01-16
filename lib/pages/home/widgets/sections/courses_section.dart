import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/breakpoints.dart';
import 'package:untitled/pages/home/widgets/courses_item.dart';

class CoursesSection extends StatelessWidget {
  final List<CoursesItem> courses = [CoursesItem(), CoursesItem()];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return courses[index];
          },
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        );
      },
    );
  }
}
