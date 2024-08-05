import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/core/textstyle.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; // Make sure to add url_launcher to your pubspec.yaml

import '../widgets/custom_section.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key, required this.size, required this.themedata});
  final Size size;
  final ThemeData themedata;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'name': 'Explore Udupi User Interface',
        'description': 'A comprehensive mobile application offering insights and directions about the city of Udupi, Karnataka, India. Serves as a resource for tourists and visitors.',
        'github': 'https://github.com/anishdevadiga/Explore-Udupi-user'
      },
      {
        'name': 'Flutter Portfolio Website',
        'description': 'A Flutter-based portfolio website showcasing a range of projects and skills with a modern design. Integrated with Firebase for real-time user message management.',
        'github': 'https://github.com/anishdevadiga/Portfolio'
      },
      {
        'name': 'Flutter Calculator App',
        'description': 'A simple Flutter-based calculator app supporting basic arithmetic operations, with functionalities to clear all entries and delete the last character.',
        'github': 'https://github.com/anishdevadiga/Flutter-Calculator-App'
      },
      {
        'name': 'Explore Udupi Admin',
        'description': 'An app for backend management of the Explore Udupi platform, allowing administrators to manage content, user data, and system settings efficiently.',
        'github': 'https://github.com/anishdevadiga/explore-udupi-admin'
      },
      {
        'name': 'Flutter Portfolio BackEnd App',
        'description': 'A Flutter app for retrieving and displaying messages from a portfolio website, utilizing Firebase for real-time data synchronization.',
        'github': 'https://github.com/anishdevadiga/portfolio_app'
      },

      {
        'name': 'Java Date Finder Application',
        'description': 'A Java Swing application designed to determine the day of the week based on user-provided date, month, and year.',
        'github':'https://github.com/anishdevadiga/Java_GUI_Swing_DAY-FINDER'
      },
    ];

    return SectionContainer(
      width: size.width,
      color: WebColor.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: themedata.textTheme.bodyLarge),
          const SpacerHeightWidget(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate((projects.length + 1) ~/ 2, (index) {
                    final project = projects[index];
                    return FractionallySizedBox(
                      widthFactor: 1.0,
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.folder, size: 30, color: WebColor.btnColor),
                                    const SizedBox(width: 10),
                                    Text(project['name']!, style: GoogleFonts.amaranth(fontSize: 20, color: Colors.white)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(project['description']!, style: GoogleFonts.amaranth(fontSize: 16, color: Colors.white)),
                                TextButton(
                                  onPressed: () {
                                    final url = project['github']!;
                                    launchUrl(url);
                                  },
                                  child: Text('Click here to go to GitHub', style: GoogleFonts.amaranth(fontSize: 13, color: Colors.blue)),
                                ),
                              ],
                            ),
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
                  children: List.generate((projects.length + 1) ~/ 2, (index) {
                    final project = projects[index + (projects.length + 1) ~/ 2];
                    return FractionallySizedBox(
                      widthFactor: 1.0,
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: WebColor.primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.folder, size: 30, color: WebColor.btnColor),
                                      const SizedBox(width: 10),
                                      Text(project['name']!, style: GoogleFonts.amaranth(fontSize: 20, color: Colors.white)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(project['description']!, style: GoogleFonts.amaranth(fontSize: 16, color: Colors.white)),
                                  TextButton(
                                    onPressed: () {
                                      final url = project['github']!;
                                      launchUrl(url);
                                    },
                                    child: Text('Click here to go to GitHub', style: GoogleFonts.amaranth(fontSize: 13, color: Colors.blue)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                // Navigate to a link when "See more" is clicked
                const url = 'https://github.com/anishdevadiga?tab=repositories'; // Replace with the desired URL
                launchUrl(url);
              },
              child: Text("See more", style: GoogleFonts.amaranth(fontSize: 16, color: Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }

  void launchUrl(String url) {
    // Implement URL launcher
    // Example using url_launcher package
    launch(url);
  }
}
