import 'package:flutter/material.dart';

class SpacerHeightWidget extends StatelessWidget {
  final double height;

  const SpacerHeightWidget({Key? key, this.height = 16.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
