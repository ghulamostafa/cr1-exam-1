import 'package:cr1_exam_1/color_screen.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String imagePath;
  final String titleText;
  final String messageText;
  final String timeText;

  const ChatWidget(
      {super.key,
      required this.imagePath,
      required this.titleText,
      required this.messageText,
      required this.timeText});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ColorScreen(),
          ),
        );
      },
      child: Row(
        children: [
          Image.network(widget.imagePath, width: 100, height: 100),
          Column(
            children: [
              Text(
                widget.titleText,
                style: TextStyle(fontSize: 30),
              ),
              Text(widget.messageText),
            ],
          ),
          Text(widget.timeText)
        ],
      ),
    );
  }
}
