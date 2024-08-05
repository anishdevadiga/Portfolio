import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';
import '../widgets/custom_section.dart';
import '../widgets/spacer_widget.dart';

class HeaderWidget extends StatelessWidget {
  final ScrollController scrollController;
  final GlobalKey aboutKey;
  final GlobalKey skillsKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  const HeaderWidget({
    super.key,
    required this.scrollController,
    required this.aboutKey,
    required this.skillsKey,
    required this.projectsKey,
    required this.contactKey,
  });

  void _downloadResume() async {
    const url = 'https://example.com/resume'; // Replace with actual URL
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
              style: themedata.textTheme.titleLarge,
              children: [
                TextSpan(
                  text: "Sherigar",
                  style: GoogleFonts.amaranth(
                    fontSize: 34,
                    color: WebColor.btnColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SectionContainer(
            width: size.width / 2,
            color: WebColor.primaryColor,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _scrollToSection(aboutKey);
                    },
                    child: Text('About', style: themedata.textTheme.titleMedium),
                  ),
                  const SpacerWidthWidget(),
                  TextButton(
                    onPressed: () {
                      _scrollToSection(skillsKey);
                    },
                    child: Text('Skills', style: themedata.textTheme.titleMedium),
                  ),
                  const SpacerWidthWidget(),
                  TextButton(
                    onPressed: () {
                      _scrollToSection(projectsKey);
                    },
                    child: Text('Projects', style: themedata.textTheme.titleMedium),
                  ),
                  const SpacerWidthWidget(),
                  TextButton(
                    onPressed: () {
                      _scrollToSection(contactKey);
                    },
                    child: Text('Contact', style: themedata.textTheme.titleMedium),
                  ),
                  const SpacerWidthWidget(),
                  TextButton(
                    onPressed: _downloadResume,
                    child: Container(
                      width: size.width * 0.07,
                      height: size.width * 0.03,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: WebColor.btnColor,
                      ),
                      child: Text('Resume', style: themedata.textTheme.titleMedium),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut);
    }
  }
}
