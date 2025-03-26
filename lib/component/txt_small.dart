import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  const TextSmall({super.key, required this.text});
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
