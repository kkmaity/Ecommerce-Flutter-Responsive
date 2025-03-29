import 'package:flutter/material.dart';
import 'package:makemefine/utils/colors.dart';

class WavyTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.footerPink  // Set background color
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, 0)  // Start at the top-left corner
      ..lineTo(0, size.height)  // Move down to the bottom-left corner
      ..lineTo(size.width, size.height)  // Move to the bottom-right corner
      ..lineTo(size.width, 0)  // Move to the top-right corner
      ..close();  // Close the path

    // Now, let's add the wave to the top side
    path.moveTo(0, 0);  // Start again at the top-left corner
    path.quadraticBezierTo(size.width * 0.15, -40, size.width * 0.5, 0);  // Strong left curve
    path.quadraticBezierTo(size.width * 0.85, 40, size.width, 0);  // Mild curve on right

    // Fill the wave shape
    canvas.drawPath(path, paint);  // Draw the path on the canvas
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}