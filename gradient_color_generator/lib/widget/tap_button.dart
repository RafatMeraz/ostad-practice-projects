import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  const TapButton({
    super.key,
    required this.onTap
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(28),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(50),
            borderRadius: BorderRadius.circular(28)
        ),
        child: const Center(
            child: Text('Tap',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
        ),
      ),
    );
  }
}