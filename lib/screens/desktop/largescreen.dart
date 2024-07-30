import 'package:anishportfoilio/LargeScreen_widget/Educcation_widget.dart';
import 'package:anishportfoilio/LargeScreen_widget/aboutWidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/certificationwidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/contact_widget.dart';
import 'package:anishportfoilio/LargeScreen_widget/heroWidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/professionalexperience.dart';
import 'package:anishportfoilio/LargeScreen_widget/projectsWidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/skill_widget.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/header_widget.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';

class LargeScreenLayout extends StatefulWidget {
  const LargeScreenLayout({super.key});

  @override
  State<LargeScreenLayout> createState() => _LargeScreenLayoutState();
}

class _LargeScreenLayoutState extends State<LargeScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themedata = Theme.of(context);
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: size.width,
            padding: EdgeInsets.all(size.width * 0.015),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //header Widget
                  const HeaderWidget(),
                  const SpacerHeightWidget(),

                  HeroWidget(size: size, themedata: themedata),
                  const SpacerHeightWidget(),

                  AboutWidget(size: size, themedata: themedata),
                  const SpacerHeightWidget(
                    height: 30,
                  ),

                  ProfessionalExperience(size: size, themedata: themedata),
                  const SpacerHeightWidget(
                    height: 30,
                  ),

                  EduccationWidget(size: size, themedata: themedata),
                  const SpacerHeightWidget(
                    height: 30,
                  ),
                  SkillWidget(size: size),
                  const SpacerHeightWidget(
                    height: 30,
                  ),
                  Projectswidget(size: size, themedata: themedata),
                  const SpacerHeightWidget(
                    height: 30,
                  ),
                  CertficationWidget(size: size, themedata: themedata),
                  const SpacerHeightWidget(
                    height: 30,
                  ),
                  ContactWidget(size: size, themeData: themedata),



                ],
              ),
            )));
  }
}
