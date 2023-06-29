import 'package:flutter/material.dart';

class ColorText extends StatelessWidget {
  const ColorText({
    super.key,
    required this.color,
    required this.onTap,
  });

  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
            children: [
              TextSpan(text: color.toString()),
              const WidgetSpan(child: Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Icon(Icons.copy, color: Colors.white, size: 15,),
              )
              )
            ]
          ),
        ),
      ),
    );
  }
}