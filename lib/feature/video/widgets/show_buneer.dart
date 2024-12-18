import 'package:flutter/material.dart';
import 'package:media_chat/core/theming/style.dart';

void showLoadingBanner(BuildContext context) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  scaffoldMessenger.showMaterialBanner(
    MaterialBanner(
      content: Text(
        'Loading, please wait until the video upload completes...',
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      backgroundColor: Colors.blueAccent,
      actions: [
        SizedBox.shrink(), // Placeholder for actions; can add buttons if needed
      ],
    ),
  );

  // Automatically dismiss after 10 seconds
  Future.delayed(Duration(seconds: 10), () {
    scaffoldMessenger.hideCurrentMaterialBanner();
    // Schedule to show the reminder banner after an additional delay
    Future.delayed(Duration(seconds: 10), () {
      showReminderBanner(context);
    });
  });
}

void showReminderBanner(BuildContext context) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  scaffoldMessenger.showMaterialBanner(
    MaterialBanner(
      content: Text(
        'The video upload is taking longer than expected. Please continue to wait...',
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      backgroundColor: Colors.blueAccent,
      actions: [
        TextButton(
          onPressed: () {
            scaffoldMessenger.hideCurrentMaterialBanner();
          },
          child: Text('Dismiss', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );

  // Automatically dismiss the reminder after 10 seconds, if not dismissed manually
  Future.delayed(Duration(seconds: 10), () {
    scaffoldMessenger.hideCurrentMaterialBanner();
  });
}
