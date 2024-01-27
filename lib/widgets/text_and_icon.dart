import 'package:flutter/material.dart';
import 'package:tiket_wisata/widgets/medium_text.dart';

class TextAndIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const TextAndIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: 5),
        MediumText(text: text),
      ],
    );
  }
}
