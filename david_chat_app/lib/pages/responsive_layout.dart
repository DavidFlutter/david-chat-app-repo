import 'package:david_chat_app/pages/mobile_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  var mobile_layout;
  var tablet_layout;
  var desktop_layout;

  ResponsiveLayout({
    this.mobile_layout,
    this.tablet_layout,
    this.desktop_layout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobile_layout;
        } else if (constraints.maxWidth < 1000) {
          return tablet_layout;
        } else {
          return desktop_layout;
        }
      },
    );
  }
}
