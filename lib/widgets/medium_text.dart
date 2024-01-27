import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  MediumText({
    super.key,
    this.color = const Color(0xff000000),
    required this.text,
    this.size = 11,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
