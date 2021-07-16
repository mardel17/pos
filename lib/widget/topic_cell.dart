import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';

class TopicCell extends StatelessWidget {
  const TopicCell({Key? key, required this.topic}) : super(key: key);

  final Map<String, dynamic> topic;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topic["title"],
          style: TextStyle(fontWeight: FontWeight.w700, color: COLOR.DARK),
        ),
        SizedBox(height: 4),
        Text(
          topic["description"],
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: COLOR.MEDIUM,
          ),
        ),
      ],
    );
  }
}
