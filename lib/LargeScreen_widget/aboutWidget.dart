import 'package:anishportfoilio/core/textstyle.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
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
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About",style: themedata.textTheme.bodyLarge,),
            const SpacerHeightWidget(height: 20,),
            Text(aboutMe1,style:themedata.textTheme.bodyMedium,),
          ],
        )
    );
  }
}