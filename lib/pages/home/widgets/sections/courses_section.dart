import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/breakpoints.dart';
import 'package:untitled/pages/home/widgets/courses_item.dart';
import 'package:untitled/pages/home/widgets/sections/product.dart';
import 'package:firebase_database/firebase_database.dart';

class CoursesSection extends StatelessWidget {
  FirebaseDatabase database = FirebaseDatabase.instance;
  final List<Product> products = [
    Product(
      imageSrc: 'images/boneca1.jpeg',
      name: 'Boneca de Vestido',
      signature: 'Artes da Titia',
      price: 66.90,
    ),
    Product(
      imageSrc: 'images/Anjinho 1.jpeg',
      name: 'Anjinho',
      signature: 'Artes da Titia',
      price: 79.90,
    ),
    Product(
      imageSrc: 'images/Gatinha e lua.jpeg',
      name: 'Gatinha com Lua',
      signature: 'Artes da Titia',
      price: 89.90,
    ),
    Product(
      imageSrc: 'images/Leao 1.jpeg',
      name: 'Leão',
      signature: 'Artes da Titia',
      price: 59.90,
    ),
    Product(
      imageSrc: 'images/Sao Bento 1.jpeg',
      name: 'São Bento',
      signature: 'Artes da Titia',
      price: 69.90,
    ),
    Product(
      imageSrc: 'images/Pato 1.jpeg',
      name: 'Sr Pato',
      signature: 'Artes da Titia',
      price: 49.90,
    ),
    Product(
      imageSrc: 'images/Unicornio 1.jpeg',
      name: 'Unicornio',
      signature: 'Artes da Titia',
      price: 66.90,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FutureBuilder(
            future: database.ref("Products").get(),
            builder: (context, snapshot) {
              List<Product> productsfromfirebase =
                  Product.fromlist(snapshot.data?.value);
              print(snapshot.data?.value?.toString());
              return GridView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CoursesItem(
                      image: Image.asset(
                        products[index].imageSrc,
                        fit: BoxFit.cover,
                      ),
                      title: products[index].name,
                      subtitle: products[index].signature,
                      value: products[index].price);
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal:
                        constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              );
            });
      },
    );
  }
}
