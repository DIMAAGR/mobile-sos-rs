import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtomTextButton extends StatelessWidget {
  final Size? size;
  final String title;
  final Alignment? align;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;

  const AtomTextButton({
    super.key,
    this.size,
    this.align,
    this.margin,
    this.padding,
    this.borderRadius,
    required this.title,
    this.foregroundColor,
    this.backgroundColor,
    required this.onPressed,
  });

  ButtonStyle get _decoration => TextButton.styleFrom(
        elevation: 0,
        padding: padding ?? EdgeInsets.zero,
        foregroundColor: foregroundColor ?? const Color(0xFF656367),
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
      child: TextButton(
        onPressed: onPressed,
        style: _decoration,
        child: Align(
          alignment: align ?? Alignment.center,
          child: Text(title, style: _textStyle),
        ),
      ),
    );
  }
}
