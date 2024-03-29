import 'package:flutter/material.dart';

class HighText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow textOverflow;
  HighText({
    super.key,
    this.color = const Color(0xff090807),
    required this.text,
    this.size = 20,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
