import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  const SectionContainer({super.key, this.width,this.height, this.color,this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:const EdgeInsets.all(20) ,
      decoration: BoxDecoration(
        color: color,
      ),
      child:child,
    );
  }
}
