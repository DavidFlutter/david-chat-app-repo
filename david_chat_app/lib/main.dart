import 'package:david_chat_app/pages/desktop_layout.dart';
import 'package:david_chat_app/pages/mobile_layout.dart';
import 'package:david_chat_app/pages/responsive_layout.dart';
import 'package:david_chat_app/pages/tablet_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: ResponsiveLayout(
        mobile_layout: MobileLayout(),
        tablet_layout: TabletLayout(),
        desktop_layout: DesktopLayout(),
      ),
    );
  }
}
