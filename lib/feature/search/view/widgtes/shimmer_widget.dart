import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MultiLineShimmer extends StatelessWidget {
  final int lineCount;
  final double height;
  final double spacing;
  final double borderRadius; // Added property for border radius

  const MultiLineShimmer({
    Key? key,
    this.lineCount = 3, // Number of shimmer lines
    this.height = 12.0, // Height of each shimmer line
    this.spacing = 18.0, // Spacing between lines
    this.borderRadius = 8.0, // Default border radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(lineCount, (index) {
          return Padding(
            padding:
                EdgeInsets.only(bottom: index == lineCount - 1 ? 0 : spacing),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: double.infinity,
                height: height,
                color: Colors.greenAccent,
                
              ),
            ),
          );
        }),
      ),
    );
  }
}
