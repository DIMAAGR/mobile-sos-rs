import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtomButton extends StatelessWidget {
  final Size? size;
  final String title;
  final EdgeInsets? margin;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;

  const AtomButton({
    super.key,
    this.size,
    this.margin,
    this.borderRadius,
    required this.title,
    this.foregroundColor,
    this.backgroundColor,
    required this.onPressed,
  });

  ButtonStyle get _decoration => ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        foregroundColor: foregroundColor ?? const Color(0xFF656367),
        backgroundColor: backgroundColor ?? const Color(0xFFFFE08D),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
        maximumSize: size ?? const Size(144, 40),
        minimumSize: size ?? const Size(144, 40),
      );

  TextStyle get _textStyle => GoogleFonts.montserrat();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: _decoration,
        child: Text(title, style: _textStyle),
      ),
    );
  }
}
