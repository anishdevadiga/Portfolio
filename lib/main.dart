import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:anishportfoilio/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(options: const FirebaseOptions(
         apiKey: "AIzaSyCoSwcsPIDA4ynt1RSbS9sf8hgvyQHbXi0",
         authDomain: "portfoliobackend-9477e.firebaseapp.com",
         projectId: "portfoliobackend-9477e",
         storageBucket: "portfoliobackend-9477e.appspot.com",
         messagingSenderId: "282200852542",
         appId: "1:282200852542:web:b6e67b8a11b3df1b0c696f",
         measurementId: "G-B7RDYXBS10",
         databaseURL:"https://portfoliobackend-9477e-default-rtdb.firebaseio.com"));
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp> _initial = Firebase.initializeApp();
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
      home: const HomePage()
    );
  }
}
