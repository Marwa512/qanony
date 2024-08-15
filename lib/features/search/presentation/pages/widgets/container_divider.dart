import 'package:flutter/material.dart';

class ContainerDivider extends StatelessWidget {
  const ContainerDivider({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
