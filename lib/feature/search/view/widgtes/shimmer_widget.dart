import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MultiLineShimmer extends StatelessWidget {
  final int lineCount;
  final double height;
  final double spacing;

  const MultiLineShimmer({
    Key? key,
    this.lineCount = 3, // Number of shimmer lines
    this.height = 12.0, // Height of each shimmer line
    this.spacing = 8.0, // Spacing between lines
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(lineCount, (index) {
          return Padding(
            padding: EdgeInsets.only(bottom: index == lineCount - 1 ? 0 : spacing),
            child: Container(
              width: double.infinity,
              height: height,
              color: Colors.white,
            ),
          );
        }),
      ),
    );
  }
}
