import 'package:flutter/material.dart';
import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/LargeScreen_widget/skill_image_widget.dart';
import 'dart:html' as html;

import 'package:get/get.dart'; // Import dart:html

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key,required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    final List<String> imagePaths = [
      'assets/images/c.png',
      'assets/images/c++.png',
      'assets/images/dart.png',
      'assets/images/java_new.png',
      'assets/images/python.png',
      'assets/images/canva.png',
      'assets/images/figma.png',
      'assets/images/flutterflow.png',
      'assets/images/html.png',
      'assets/images/CSS.png',
      'assets/images/js.png',
      'assets/images/PHP.png',
      'assets/images/SQL.png',
      'assets/images/firebase.png',
      'assets/images/linux.png',
      'assets/images/git.png',
      'assets/images/github.png',
      'assets/images/android.png',
      'assets/images/flutter.png',
      'assets/images/excel.png',
      'assets/images/powerbi.png',
      'assets/images/ml.png',
      'assets/images/dl.png',
    ];

    // Create a ScrollController
    final ScrollController _scrollController = ScrollController();

    return SectionContainer(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text('Skills', style: themedata.textTheme.bodyLarge),
          ),
          SizedBox(
            height:size.height*0.15,
            child: Card(
              elevation: 8.0,
              color: WebColor.primaryColor,
              child: MouseRegion(
                onEnter: (_) => html.document.body!.style.cursor = 'pointer',
                onExit: (_) => html.document.body!.style.cursor = 'default',
                child:ScrollbarTheme(
                  data: ScrollbarThemeData(
                    thumbColor: MaterialStateProperty.all(Colors.white60), // Thumb color
                    trackColor: MaterialStateProperty.all(Colors.grey), // Track color
                  ),
                  child: Scrollbar(
                    controller: _scrollController, // Attach ScrollController here
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      controller: _scrollController, // Attach ScrollController here
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          imagePaths.length,
                              (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SkillImageWidget(imagePath: imagePaths[index],size :size),
                          ),
                        ).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
