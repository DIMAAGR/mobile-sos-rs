import 'package:flutter/material.dart';

class AtomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String hintText;

  const AtomIconButton({super.key, required this.icon, this.onPressed, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      side: const BorderSide(color: Colors.white, width: 1.5),
      padding: EdgeInsets.zero,
      minimumSize: const Size(32, 32),
      fixedSize: const Size(32, 32),
    );
    return Tooltip(
      message: hintText,
      child: OutlinedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: Icon(icon),
      ),
    );
  }
}
