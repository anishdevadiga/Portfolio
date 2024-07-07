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
            bodySmall: GoogleFonts.poppins(color:Colors.white,fontSize: 20,fontWeight: FontWeight.normal),
            bodyMedium: GoogleFonts.poppins(color:Colors.white,fontSize: 26,fontWeight: FontWeight.w700),
            bodyLarge: GoogleFonts.poppins(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700),
            titleSmall:GoogleFonts.poppins(color:Colors.white,fontSize: 20,fontWeight: FontWeight.normal),

          )
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
