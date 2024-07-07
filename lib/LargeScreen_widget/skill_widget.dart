import 'package:flutter/material.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/LargeScreen_widget/skill_image_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    final List<String> imagePaths = [
      'assets/images/flutter.jpg',
      'assets/images/dart.jpg',
      'assets/images/firebase.jpg',
      'assets/images/flutter.jpg',
      'assets/images/dart.jpg',
      'assets/images/firebase.jpg',
      'assets/images/flutter.jpg',
      'assets/images/dart.jpg',
      'assets/images/firebase.jpg',
      'assets/images/flutter.jpg',
      'assets/images/dart.jpg',
      'assets/images/firebase.jpg',
    ];

    return SectionContainer(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text('Skills', style: themedata.textTheme.bodyLarge),
          ),
          Scrollbar(
            thumbVisibility: true, // Always show the scrollbar
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  imagePaths.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SkillImageWidget(imagePath: imagePaths[index]),
                  ),
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
