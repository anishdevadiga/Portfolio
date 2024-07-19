import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillImageWidget extends StatelessWidget {
  final String imagePath;
  final Size size;
  const SkillImageWidget({Key? key, required this.imagePath,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin:const EdgeInsets.symmetric(horizontal: 8.0),
      height:size.height*0.1,
      width: size.width*0.05,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // Adjust as needed
        ),
      ),
    );
  }
}