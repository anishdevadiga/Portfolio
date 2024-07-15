import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/utils/custom_role_text.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.size,
    required this.themedata,
  });

  final Size size;
  final ThemeData themedata;

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: size.width,
      height:size.height*0.7,
      color: WebColor.primaryColor,
      child: Row(
        children: [
          Expanded(
            child: SectionContainer(
              color: WebColor.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello I am Anish",
                    style: themedata.textTheme.bodySmall,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    Role.flutterText,
                    style: GoogleFonts.poppins(
                      color: WebColor.btnColor,
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SpacerHeightWidget(),
                  Text(
                    "From India",
                    style: GoogleFonts.poppins(color:Colors.white60,fontWeight: FontWeight.normal,fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  const SpacerHeightWidget(),
                  const SpacerHeightWidget(),
                  const SpacerHeightWidget(),

                  Row(
                    children: [
                      Image.asset('assets/images/linkedin_new.png', width: 37, height: 37), // Replace with your actual image asset path
                      SizedBox(width: size.width*0.0035), // Adjust spacing as needed
                      Text(
                        "Anish Sherigar",
                        style: GoogleFonts.poppins(
                          color: Colors.white, // Or any color you prefer
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/github_final.png', width: 37, height: 37), // Replace with your actual image asset path
                      SizedBox(width: size.width*0.0035), // Adjust spacing as needed
                      Text(
                        "Anish Sherigar",
                        style: GoogleFonts.poppins(
                          color: Colors.white, // Or any color you prefer
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SectionContainer(
              color:WebColor.primaryColor,
              child: Container(
                height:size.height*0.5,
                width: size.width*0.5,
                decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    color: WebColor.btnColor,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_red.png')
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}