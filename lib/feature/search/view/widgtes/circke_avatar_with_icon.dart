import 'package:flutter/material.dart';

class CirckeAvatarWithIcon extends StatelessWidget {
  final IconData icon;
  final double radius;
  final Gradient gradient;
  final Color? color;

  const CirckeAvatarWithIcon({
    Key? key,
    required this.icon,
    required this.color,
    this.radius = 45.0,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration:
          BoxDecoration(shape: BoxShape.circle, gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.yellow.withOpacity(0.3),
          blurRadius: 10.0,
          offset: Offset(-15, 10), // Shadow position
        ),
      ]),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: color ?? Colors.white,
        size: 35,
      ),

      //  Text(
      //   text,
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: radius / 2.5, // Adjust font size based on radius
      //     fontWeight: FontWeight.bold,
      //   ),
    );
  }
}
