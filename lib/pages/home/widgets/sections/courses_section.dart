import 'package:flutter/material.dart';
import 'package:untitled/breakpoints.dart';
import 'package:untitled/pages/home/widgets/courses_item.dart';

class CoursesSection extends StatelessWidget {
  final List<CoursesItem> courses = [
    CoursesItem(
      image: Image.asset('images/boneca1.jpeg', fit: BoxFit.cover),
      title: 'Boneca de Vestido',
      subtitle: 'Artes da Titia',
      value: 66.90,
    ),
    CoursesItem(
      image: Image.asset('images/Anjinho 1.jpeg', fit: BoxFit.cover),
      title: 'Anjinho',
      subtitle: 'Artes da Titia',
      value: 79.90,
    ),
    CoursesItem(
      image: Image.asset('images/Gatinha e lua.jpeg', fit: BoxFit.cover),
      title: 'Gatinha com Lua',
      subtitle: 'Artes da Titia',
      value: 89.90,
    ),
    CoursesItem(
      image: Image.asset('images/Leao 1.jpeg', fit: BoxFit.cover),
      title: 'Leão',
      subtitle: 'Artes da Titia',
      value: 59.90,
    ),
    CoursesItem(
      image: Image.asset('images/Sao Bento 1.jpeg', fit: BoxFit.cover),
      title: 'São Bento',
      subtitle: 'Artes da Titia',
      value: 69.90,
    ),
    CoursesItem(
      image: Image.asset('images/Pato 1.jpeg', fit: BoxFit.cover),
      title: 'Sr Pato',
      subtitle: 'Artes da Titia',
      value: 49.90,
    ),
    CoursesItem(
      image: Image.asset('images/Unicornio 1.jpeg', fit: BoxFit.cover),
      title: 'Unicornio',
      subtitle: 'Artes da Titia',
      value: 66.90,
    ),
  ];
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
