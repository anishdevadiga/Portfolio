import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themedata = Theme.of(context);
    return SectionContainer(
      width: size.width,
      color: WebColor.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
                  text: "Anish ",
                  style: themedata.textTheme.bodyMedium,
                  children: [
                TextSpan(
                    text: "Sherigar",
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: WebColor.btnColor,
                        fontWeight: FontWeight.w700))
              ])),
          SectionContainer(
            width: size.width / 2,
            color: WebColor.primaryColor,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('About', style: themedata.textTheme.titleSmall),
                  const SpacerWidthWidget(),
                  Text('Skills', style: themedata.textTheme.titleSmall),
                  const SpacerWidthWidget(),
                  Text('Projects', style: themedata.textTheme.titleSmall),
                  const SpacerWidthWidget(),
                  Text('Resume', style: themedata.textTheme.titleSmall),
                  const SpacerWidthWidget(),
                  Text('Contact', style: themedata.textTheme.titleSmall),
                ],
              ),
            ),
          ),
          // MouseRegion(
          //   cursor: SystemMouseCursors.click,
          //   child: Container(
          //       padding: EdgeInsets.all(15),
          //       child: Center(
          //           child: Text("Contact", style: themedata.textTheme.bodySmall))),
          // )
        ],
      ),
    );
  }
}
