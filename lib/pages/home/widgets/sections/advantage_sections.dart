import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star_outline_outlined,
            color: Colors.black,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey),
      )),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage("+500 Produções", "Feitos e entregues"),
          buildAdvantage("+100 Criações Próprias", "Pedidos Personalizados"),
          buildAdvantage(
              "+1000 Sorrisos Genuínos", "Com amor em todas as fases"),
        ],
      ),
    );
  }
}
