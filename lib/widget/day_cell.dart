import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';

class DayCell extends StatelessWidget {
  const DayCell({Key? key, required this.day}) : super(key: key);

  final Map<String, String> day;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              day["title"]!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: COLOR.DARK,
              ),
            ),
          ),
          SizedBox(width: 8),
          Text(
            day["description"]!,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: COLOR.MEDIUM_DARK,
            ),
          ),
          SizedBox(width: 16),
          Image.asset("images/arrow_forward.png"),
        ],
      ),
    );
  }
}
