import 'package:flutter/material.dart';

class TextMedium extends StatelessWidget {
  const TextMedium({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        letterSpacing: 0.7,
      ),
    );
  }
}
