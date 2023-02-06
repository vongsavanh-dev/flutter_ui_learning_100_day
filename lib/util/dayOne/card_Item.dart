import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final int r;
  final int g;
  final int b;
  final double a;
  // final IconName;
  // final String titleName;

  const CardItem({
    Key? key,
    required this.r,
    required this.g,
    required this.b,
    required this.a,
    // required this.IconName,
    // required this.titleName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(r, g, b, a),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
