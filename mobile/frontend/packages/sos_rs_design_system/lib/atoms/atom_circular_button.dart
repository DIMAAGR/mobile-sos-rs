import 'package:flutter/material.dart';

class AtomCircularButton extends StatelessWidget {
  const AtomCircularButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.size,
  });

  final void Function()? onPressed;
  final Color? backgroundColor;
  final Widget child;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        surfaceTintColor: backgroundColor ?? Colors.white,
        backgroundColor: backgroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size ?? 100)),
        fixedSize: Size(size ?? 48, size ?? 48),
        maximumSize: Size(size ?? 48, size ?? 48),
        minimumSize: Size(size ?? 48, size ?? 48),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
