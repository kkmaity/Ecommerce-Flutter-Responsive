import 'package:flutter/material.dart';
import 'package:makemefine/utils/colors.dart';

class TextMedium extends StatelessWidget {
  const TextMedium({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.black20,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        letterSpacing: 0.5,
      ),
    );
  }
}
