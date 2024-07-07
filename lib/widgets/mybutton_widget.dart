import 'package:anishportfoilio/core/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Size? size;
  final String text;
  const MyButton({super.key, required this.size, this.text = "Save"});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: WebColor.btnColor,
        ),
        height: 45,
        width: size!.width * 0.1,
        child: Center(
          child: Text(text, style: themedata.textTheme.bodySmall),
        ),
      ),
    );
  }
}
