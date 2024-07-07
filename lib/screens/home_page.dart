import 'package:anishportfoilio/screens/desktop/largescreen.dart';
import 'package:anishportfoilio/screens/mobile/mobilelayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 495) {
        return const MobileLayout();
      } else {
        return const LargeScreenLayout();
      }
    });
  }
}
