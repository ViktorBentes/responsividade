import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.black,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          return BorderSide(
            color: Colors.white,
            width: 2,
          );
        },
      ),
    );

    final ButtonStyle elevatedButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.white,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed))
            return BorderSide(
              color: Colors.black,
              width: 1,
            );
          return null; // Defer to the widget's default.
        },
      ),
    );

    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Responsividade'),
          const SizedBox(width: 32),
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              child: Text('Fazer login'),
              style: outlineButtonStyle,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                child: Text('Cadastre-se'),
                style: elevatedButtonStyle),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
