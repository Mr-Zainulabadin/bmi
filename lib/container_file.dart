import 'package:flutter/material.dart';

class ContainerRepeated extends StatelessWidget {
  ContainerRepeated({
    required this.colors,
    required this.cardWidget,
    required this.onPressed,
  });

  final Color colors;
  final Widget cardWidget;
  final VoidCallback onPressed; // Change Function to VoidCallback

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardWidget,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
