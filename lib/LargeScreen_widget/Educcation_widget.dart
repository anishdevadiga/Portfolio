import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/core/textstyle.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';
class EduccationWidget extends StatelessWidget {
  const EduccationWidget({super.key, required this.size,required this.themedata});
  final Size size;
  final ThemeData themedata;
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
                  children: List.generate(2, (index) {
                    return FractionallySizedBox(
                      widthFactor: 1.0,
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 120,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: ListTile(
                            leading: const Icon(Icons.circle, color: WebColor.btnColor),
                            title: Text('Professional Experience $index', style: bodyStyle),
                            subtitle: Text('June 2024 - Present', style: bodyStyle),
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
                  children: List.generate(2, (index) {
                    return FractionallySizedBox(
                      widthFactor: 1.0, // Full width of the column
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 120,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: ListTile(
                            leading: const Icon(Icons.circle, color: WebColor.btnColor),
                            title: Text('Professional Experience ${index + 2}', style: bodyStyle),
                            subtitle: Text('June 2024 - Present', style: bodyStyle),
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
