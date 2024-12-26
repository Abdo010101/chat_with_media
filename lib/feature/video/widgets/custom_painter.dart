import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class GradientDashedBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(15),
        dashPattern: [8, 10], // Dash width and space between dashes
        strokeWidth: 3,
        color: Colors.transparent, // Set to transparent to apply gradient
        customPath: (size) {
          // Create a path for the border
          return Path()
            ..addRRect(RRect.fromRectAndRadius(
              Rect.fromLTWH(0, 0, size.width, size.height),
              Radius.circular(15),
            ));
        },
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.49, 0.50),
              radius: 0.39,
              colors: [
                Color(0xFF00804C),
                Colors.blue,
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Dashed Border with Gradient',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
