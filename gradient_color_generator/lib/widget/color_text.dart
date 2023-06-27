import 'package:flutter/material.dart';

class ColorText extends StatelessWidget {
  const ColorText({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(color.toString(),
        style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),
      ),
    );
  }
}