import 'package:anishportfoilio/utils/urls.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  void _downloadResume() async {
    const url = Urls.resumeUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  GestureDetector(
                    onTap: () {
                      // Navigate to About section
                    },
                    child: Text('About', style: themedata.textTheme.titleSmall),
                  ),
                  const SpacerWidthWidget(),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Skills section
                    },
                    child: Text('Skills', style: themedata.textTheme.titleSmall),
                  ),
                  const SpacerWidthWidget(),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Projects section
                    },
                    child: Text('Projects', style: themedata.textTheme.titleSmall),
                  ),
                  const SpacerWidthWidget(),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Contact section
                    },
                    child: Text('Contact', style: themedata.textTheme.titleSmall),

                  ),
                  const SpacerWidthWidget(),
                  GestureDetector(
                    onTap: _downloadResume,
                    child: Container(
                      width: size.width*0.05,
                        height:  size.width*0.02,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WebColor.btnColor,
                        ),
                        child: Text('Resume', style: themedata.textTheme.titleSmall)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
