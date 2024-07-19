import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/core/textstyle.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_section.dart';

class ProfessionalExperience extends StatelessWidget {
  const ProfessionalExperience({super.key,required this.size,required this.themedata});
  final Size size;
  final ThemeData themedata;
  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: size.width,
      color: WebColor.primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(profTitle, style: themedata.textTheme.bodyLarge),
                const SpacerHeightWidget(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 120,
                      width: size.width * 0.9, // Adjust width as needed
                      child: Card(
                        elevation: 8.0,
                        color: WebColor.primaryColor,
                        child: ListTile(
                          leading: const Icon(Icons.circle, color: WebColor.btnColor),
                          title: Text(professionalExp1, style: GoogleFonts.amaranth(fontSize: 20,color: Colors.white)),
                          subtitle: Text("June 2024 - Present", style: GoogleFonts.amaranth(fontSize: 20,color: Colors.white)),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
