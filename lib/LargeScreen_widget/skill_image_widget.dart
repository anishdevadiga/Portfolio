import 'package:flutter/material.dart';

class SkillImageWidget extends StatelessWidget {
  final String imagePath;

  const SkillImageWidget({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // Adjust as needed
        ),
      ),
    );
  }
}