import 'package:flutter/material.dart';

class SpacerWidthWidget extends StatelessWidget {
  final double?width;
  final double?height;

  const SpacerWidthWidget({super.key,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 15,
    );
  }
}
