import 'package:anishportfoilio/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:anishportfoilio/screens/desktop/largescreen.dart';
import 'package:anishportfoilio/screens/mobile/mobilelayout.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart'; // Import the math library for sqrt function

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Calculate the screen size in inches
      double screenWidthInInches = constraints.maxWidth / MediaQuery.of(context).devicePixelRatio / 96.0;
      double screenHeightInInches = constraints.maxHeight / MediaQuery.of(context).devicePixelRatio / 96.0;
      double diagonalInInches = sqrt(
          screenWidthInInches * screenWidthInInches + screenHeightInInches * screenHeightInInches
      );

      if (diagonalInInches <= 13) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: const Text('This screen size is not compatible with this website,try on another devices.',
                  style:TextStyle(
                    color: WebColor.primaryColor,
                ),),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK',style: TextStyle(color: WebColor.btnColor,fontSize: 20),),
                  ),
                ],
              );
            },
          );
        });
      }

      if (constraints.maxWidth < 495) {
        return const MobileLayout();
      } else {
        return const LargeScreenLayout();
      }
    });
  }
}
