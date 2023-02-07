import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final int r;
  final int g;
  final int b;
  final double a;

  final IconName;
  final String titleName;
  final String description;

  const CardItem({
    Key? key,
    required this.r,
    required this.g,
    required this.b,
    required this.a,
    required this.IconName,
    required this.titleName,
    required this.description,
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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                IconName,
                style: const TextStyle(fontSize: 48),
              ),
              const SizedBox(height: 8),
              Text(
                titleName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 15,letterSpacing: 0.5,color: Color.fromRGBO(r, g, b, 1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
