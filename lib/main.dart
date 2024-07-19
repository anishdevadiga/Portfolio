import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:anishportfoilio/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Portfolio",
      theme: ThemeData(
          scaffoldBackgroundColor: WebColor.primaryColor,
          textTheme: TextTheme(
            bodySmall: GoogleFonts.amaranth(color:Colors.white,fontSize: 22,fontWeight: FontWeight.normal),
            bodyMedium: GoogleFonts.amaranth(color:Colors.white,fontSize: 28,fontWeight: FontWeight.normal),
            bodyLarge: GoogleFonts.amaranth(color: Colors.white,fontSize: 42,fontWeight: FontWeight.normal),
            titleSmall:GoogleFonts.amaranth(color:Colors.white,fontSize: 21,fontWeight: FontWeight.normal),
           titleMedium:GoogleFonts.amaranth(color:Colors.white,fontSize: 24,fontWeight: FontWeight.normal),
            titleLarge:GoogleFonts.amaranth(color:Colors.white,fontSize: 38,fontWeight: FontWeight.normal),
          )
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
