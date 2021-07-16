import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.menu}) : super(key: key);

  final Map<String, String> menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Container(
              alignment: Alignment.center,
              width: 24,
              child: Image.asset(menu["image"]!)),
          SizedBox(width: 16),
          Expanded(
              child: Text(
            menu["title"]!,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: COLOR.DARK,
            ),
          )),
          SizedBox(width: 8),
          Image.asset("images/arrow_forward.png"),
        ],
      ),
    );
  }
}
