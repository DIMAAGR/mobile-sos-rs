import 'package:flutter/material.dart';

class Spaces extends StatelessWidget {
  const Spaces.ver({
    super.key,
    required this.size,
  })  : isFill = false,
        isHeight = true,
        flex = 1,
        isWidth = false;

  const Spaces.hor({
    super.key,
    required this.size,
  })  : isFill = false,
        flex = 1,
        isHeight = false,
        isWidth = true;

  const Spaces.fill({
    this.flex = 1,
    super.key,
  })  : isFill = true,
        size = 0,
        isHeight = true,
        isWidth = true;

  final bool isFill;
  final bool isHeight;
  final bool isWidth;
  final double size;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return isFill
        ? Expanded(
            flex: flex,
            child: const SizedBox(),
          )
        : SizedBox(
            height: isHeight ? size : 0,
            width: isWidth ? size : 0,
          );
  }
}
