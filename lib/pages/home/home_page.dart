import 'package:flutter/material.dart';
import 'package:untitled/breakpoints.dart';
import 'package:untitled/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:untitled/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint ? PreferredSize(child: MobileAppBar(), preferredSize: Size(double.infinity, 56),)
              : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
              drawer: constraints.maxWidth < mobileBreakpoint ? Drawer(): null,
              body: Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: ListView(
                  ),
                ),
              )
        );
      },
    );
  }
}