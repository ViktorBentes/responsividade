import 'package:flutter/material.dart';
import 'package:untitled/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text("Responsividade"),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(onPressed: () {}, child: Text("Fazer Login", style: TextStyle(color: Colors.white),),
            style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.white, width: 2)),
            )
          ),
          const SizedBox(width: 8),
          SizedBox(
            height:40,
            child: ElevatedButton(onPressed: () {}, child: Text("Cadastre-se", style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            )
          )
        ],
      ),
    );
  }
}