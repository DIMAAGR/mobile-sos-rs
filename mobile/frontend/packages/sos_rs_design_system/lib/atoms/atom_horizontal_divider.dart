import 'package:flutter/material.dart';

class AtomHorizontalDivider extends StatelessWidget {
  const AtomHorizontalDivider({super.key, required this.size, this.color, this.height}) : _isFill = false;

  const AtomHorizontalDivider.fill({this.color, super.key, this.height})
      : _isFill = true,
        size = 0;

  final bool _isFill;
  final double size;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.white,
      width: _isFill ? double.infinity : size,
      height: height ?? 1,
    );
  }
}
