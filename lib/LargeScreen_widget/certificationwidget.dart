import 'package:anishportfoilio/LargeScreen_widget/projectDetailScreen.dart';
import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class CertficationWidget extends StatelessWidget {
  const CertficationWidget({
    super.key,
    required this.size,
    required this.themedata,
  });

  final Size size;
  final ThemeData themedata;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {'name': 'Project 1', 'image': 'assets/images/c++.png'},
      {'name': 'Project 2', 'image': 'assets/images/dart.png'},
      {'name': 'Project 2', 'image': 'assets/images/dart.png'},
      {'name': 'Project 1', 'image': 'assets/images/c++.png'},
      {'name': 'Project 2', 'image': 'assets/images/dart.png'},
      {'name': 'Project 2', 'image': 'assets/images/dart.png'},
      // Add more projects here
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
            child: Text('Projects', style: themedata.textTheme.bodyLarge),
          ),
          SizedBox(
            height: size.height * 0.5, // Adjust the height as needed
            child: MouseRegion(
              onEnter: (_) => html.document.body!.style.cursor = 'pointer',
              onExit: (_) => html.document.body!.style.cursor = 'default',
              child: ScrollbarTheme(
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
                        projects.length,
                            (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProjectDetailScreen(
                                    projectName: projects[index]['name']!,
                                    projectImage: projects[index]['image']!,
                                    themedata: themedata,
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 8.0,
                              color: WebColor.primaryColor,
                              child: Container(
                                width: size.width * 0.2, // Adjust width as needed
                                height: size.height * 0.4, // Adjust height as needed
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0), // Optional: for rounded corners
                                      child: Image.asset(
                                        projects[index]['image']!,
                                        fit: BoxFit.cover,
                                        width: size.width * 0.18, // Adjust width for rectangle shape
                                        height: size.height * 0.25, // Adjust height for rectangle shape
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          projects[index]['name']!,
                                          style: themedata.textTheme.bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ).toList(),
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
