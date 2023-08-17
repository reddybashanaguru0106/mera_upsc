import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chatUI;
import 'package:intl/intl.dart'; // Import the intl library for DateFormat

class CustomMessageBubble extends StatelessWidget {
  final String authorName;
  final Color bubbleColor;
  final Color textColor;
  final Color timeColor;
  final chatUI.Message message; // Change the type of message parameter

  CustomMessageBubble({
    Key? key,
    required this.message, // Update the parameter here
    required this.authorName,
    required this.bubbleColor,
    required this.textColor,
    required this.timeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 4, bottom: 2),
          child: Text(
            authorName,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child: Text(
                message.text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                DateFormat('HH:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(message.createdAt),
                ),
                style: TextStyle(
                  color: timeColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
