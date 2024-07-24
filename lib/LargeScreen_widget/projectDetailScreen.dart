import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({
    super.key,
    required this.projectName,
    required this.projectImage,
    required this.themedata
  });

  final String projectName;
  final String projectImage;
  final ThemeData themedata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(projectImage),
            Text(
                projectName,
                style: themedata.textTheme.bodySmall
            ),
            // Add more project details here
          ],
        ),
      ),
    );
  }
}
