import 'dart:ui';

import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Paint _paint;
  final double dashWidth = 8.0; // Width of the dash
  final double dashSpace = 10.0; // Space between the dashes

  DashedBorderPainter()
      : _paint = Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    double distance = 0.0;
    while (distance < size.width) {
      // Draw dashes horizontally
      canvas.drawLine(
        Offset(distance, 0),
        Offset(distance + dashWidth, 0),
        _paint,
      );
      distance += dashWidth + dashSpace;
    }

    distance = 0.0;
    while (distance < size.height) {
      // Draw dashes vertically
      canvas.drawLine(
        Offset(0, distance),
        Offset(0, distance + dashWidth),
        _paint,
      );
      distance += dashWidth + dashSpace;
    }

    distance = 0.0;
    while (distance < size.width) {
      // Draw dashes on the bottom horizontally
      canvas.drawLine(
        Offset(distance, size.height),
        Offset(distance + dashWidth, size.height),
        _paint,
      );
      distance += dashWidth + dashSpace;
    }

    distance = 0.0;
    while (distance < size.height) {
      // Draw dashes on the right vertically
      canvas.drawLine(
        Offset(size.width, distance),
        Offset(size.width, distance + dashWidth),
        _paint,
      );
      distance += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
