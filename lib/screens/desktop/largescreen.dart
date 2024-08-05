import 'package:anishportfoilio/LargeScreen_widget/Educcation_widget.dart';
import 'package:anishportfoilio/LargeScreen_widget/aboutWidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/contact_widget.dart';
import 'package:anishportfoilio/LargeScreen_widget/heroWidget.dart';
import 'package:anishportfoilio/LargeScreen_widget/professionalexperience.dart';
import 'package:anishportfoilio/LargeScreen_widget/skill_widget.dart';
import 'package:anishportfoilio/widgets/header_widget.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';

import '../../LargeScreen_widget/projectsWidget.dart';

class LargeScreenLayout extends StatefulWidget {
  const LargeScreenLayout({super.key});

  @override
  State<LargeScreenLayout> createState() => _LargeScreenLayoutState();
}

class _LargeScreenLayoutState extends State<LargeScreenLayout> {
  final ScrollController scrollController = ScrollController();

  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

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
          controller: scrollController,
          child: Column(
            children: [
              HeaderWidget(
                scrollController: scrollController,
                aboutKey: _aboutKey,
                skillsKey: _skillsKey,
                projectsKey: _projectsKey,
                contactKey: _contactKey,
              ),
              const SpacerHeightWidget(),

              HeroWidget(size: size, themedata: themedata),
              const SpacerHeightWidget(),

              AboutWidget(key: _aboutKey, size: size, themedata: themedata),
              const SpacerHeightWidget(height: 30),

              ProfessionalExperience(size: size, themedata: themedata),
              const SpacerHeightWidget(height: 30),

              EduccationWidget(size: size, themedata: themedata),
              const SpacerHeightWidget(height: 30),

              SkillWidget(key: _skillsKey, size: size),
              const SpacerHeightWidget(height: 30),

              ProjectsWidget(key: _projectsKey, size: size, themedata: themedata),
              const SpacerHeightWidget(height: 30),

              ContactWidget(key: _contactKey, size: size, themeData: themedata),
            ],
          ),
        ),
      ),
    );
  }
}
