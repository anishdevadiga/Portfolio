import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/core/textstyle.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';

class EduccationWidget extends StatelessWidget {
  const EduccationWidget({super.key, required this.size, required this.themedata});
  final Size size;
  final ThemeData themedata;

  final List<Map<String, String>> educationDetails = const [
    {
      'institution': 'T.A.PAI English Medium High School, Udupi.',
      'degree': 'SSLC',
      'score': 'Score - 92.64%',
      'duration': 'June 2015 - April 2018'
    },
    {
      'institution': 'Mahatma Gandhi Memorial College, Udupi.',
      'degree': 'PCMCs',
      'score': 'Score - 89%',
      'duration': 'June 2018 - March 2020'
    },
    {
      'institution': 'Mahatma Gandhi Memorial College, Udupi.',
      'degree': 'Bachelor of Computer Application',
      'score': 'CGPA - 9.3',
      'duration': 'August 2020 - June 2023'
    },
    {
      'institution': 'Manipal Institute of Technology, Manipal, Udupi',
      'degree': 'Master of Computer Application',
      'duration': 'August 2023 - Present'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: size.width,
      color: WebColor.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Educational Information', style: themedata.textTheme.bodyLarge),
          const SpacerHeightWidget(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(educationDetails.length ~/ 2, (index) {
                    final detail = educationDetails[index];
                    return FractionallySizedBox(
                      widthFactor: 1.0,
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 120,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: ListTile(
                            leading: const Icon(Icons.school, color: WebColor.btnColor),
                            title: Text(detail['institution']!, style: bodyStyle),
                            subtitle: Text('${detail['degree']}\n${detail['score']}\n${detail['duration']}', style: bodyStyle),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(educationDetails.length ~/ 2, (index) {
                    final detail = educationDetails[index + 2];
                    return FractionallySizedBox(
                      widthFactor: 1.0, // Full width of the column
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 120,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: ListTile(
                            leading: const Icon(Icons.school, color: WebColor.btnColor),
                            title: Text(detail['institution']!, style: bodyStyle),
                            subtitle: Text('${detail['degree']}\n${detail['score']}\n${detail['duration']}', style: bodyStyle),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
