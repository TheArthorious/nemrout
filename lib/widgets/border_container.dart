import 'package:flutter/material.dart';

class MyBorder extends StatelessWidget {
  final double borderWidth;
  final Color borderColor;
  final Widget child;
  const MyBorder(
      {super.key,
      required this.borderWidth,
      required this.borderColor,
      required this.child});

  factory MyBorder.defaultBorder({
    Key? key,
    double borderWidth = 2,
    Color borderColor = Colors.white38,
    required Widget child,
  }) {
    return MyBorder(
        borderWidth: borderWidth, borderColor: borderColor, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
