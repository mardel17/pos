import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';

class AtricleCell extends StatelessWidget {
  const AtricleCell({Key? key, required this.article}) : super(key: key);

  final Map<String, String> article;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article["title"]!,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: COLOR.MEDIUM,
            ),
          ),
          SizedBox(height: 8),
          Text(
            article["description"]!,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: COLOR.DARK,
            ),
          ),
        ],
      ),
    );
  }
}
