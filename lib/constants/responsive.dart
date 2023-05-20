import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabLayout;
  const ResponsiveLayout(
      {super.key, required this.mobileLayout, required this.tabLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout;
      } else {
        return tabLayout;
      }
    });
  }
}
