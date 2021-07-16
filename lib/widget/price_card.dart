import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({Key? key, required this.price}) : super(key: key);

  final Map<String, dynamic> price;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: price["color"].withOpacity(0.1)),
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/light.png",
                color: price["color"],
              ),
            ),
            SizedBox(height: 8),
            Text(
              price["title"],
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 1.25,
                  color: COLOR.DARK),
            ),
            SizedBox(height: 8),
            Text(
              price["description"],
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: COLOR.MEDIUM),
            )
          ],
        ),
      ),
    );
  }
}
