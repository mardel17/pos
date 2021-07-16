import 'package:flutter/material.dart';

class ProductCell extends StatelessWidget {
  const ProductCell({Key? key, required this.product}) : super(key: key);

  final Map<String, String> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
              alignment: Alignment.center,
              width: 24,
              child: Image.asset(product["image"]!)),
          SizedBox(width: 16),
          Expanded(child: Text(product["title"]!)),
        ],
      ),
    );
  }
}
