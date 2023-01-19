import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CoursesItem extends StatelessWidget {
  final Widget image;
  final String title;
  final String subtitle;
  final double value;

  const CoursesItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: image,
        ),
        const SizedBox(height: 4),
        LayoutBuilder(
          builder: (context, constraints) {
            return AutoSizeText(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            );
          },
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "R\$${value.toStringAsFixed(2)}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
