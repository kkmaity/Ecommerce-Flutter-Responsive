import 'package:flutter/material.dart';

class TextSmallWhite extends StatelessWidget {
  const TextSmallWhite({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 14,

      ),
    );
  }
}
