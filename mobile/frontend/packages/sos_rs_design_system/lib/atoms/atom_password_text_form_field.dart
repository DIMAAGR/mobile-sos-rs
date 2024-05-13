import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtomPasswordTextFormField extends StatelessWidget {
  final double? width;
  final IconData? prefixIcon;
  final String? hintText;
  final EdgeInsets? margin;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  const AtomPasswordTextFormField({
    super.key,
    this.width,
    this.margin,
    this.onSaved,
    this.hintText,
    this.textStyle,
    this.onChanged,
    this.prefixIcon,
    this.controller,
    this.borderRadius,
    this.keyboardType,
    this.backgroundColor,
    this.foregroundColor,
  });

  final defaultForegroundColor = const Color(0xFF656367);
  final defaultBackgroundColor = const Color(0xFFEDEBEF);

  BoxDecoration get _decoration => BoxDecoration(
        color: backgroundColor ?? defaultBackgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      );

  TextStyle get _style => GoogleFonts.montserrat(
        fontSize: 16,
        color: foregroundColor ?? defaultForegroundColor,
      );

  InputDecoration get _inputDecoration => InputDecoration(
        border: InputBorder.none,
        hintText: hintText ?? 'Senha',
        prefixIcon: Icon(
          prefixIcon ?? Icons.password,
          color: foregroundColor ?? defaultForegroundColor,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 9),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: _decoration,
      width: MediaQuery.of(context).size.width,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Center(
        child: TextFormField(
          style: _style,
          onSaved: onSaved,
          obscureText: true,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          decoration: _inputDecoration,
        ),
      ),
    );
  }
}
