import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Color(0xff757575))),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                          onPressed: () {},
                          color: Colors.grey[500],
                          icon: Icon(Icons.search)),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Pesquise alguma coisa aqui",
                              isCollapsed: true),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                SizedBox(width: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xffffffff),
                      backgroundColor: Colors.black),
                  child: Text("Quem Somos"),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xffffffff),
                        backgroundColor: Colors.black),
                    child: Text("Dúvidas")),
              ],
            ],
          );
        },
      ),
    );
  }
}
