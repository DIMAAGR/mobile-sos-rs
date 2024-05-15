import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/themes_and_styles/text_theme.dart';

import 'atom_colors.dart';

class AtomTextFormField extends StatelessWidget {
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

  const AtomTextFormField({
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

  InputBorder get _inputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: foregroundColor ?? AtomColors.defaultBorderColor, width: 2),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      );

  InputBorder get _focusedInputBorder => OutlineInputBorder(
        borderSide: BorderSide(color: foregroundColor ?? Colors.black, width: 2),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      );

  InputDecoration get _inputDecoration => InputDecoration(
        contentPadding: const EdgeInsets.symmetric( horizontal: 16),
        fillColor: backgroundColor ?? AtomColors.defaultBackgroundColor,
        focusedBorder: _focusedInputBorder,
        enabledBorder: _inputBorder,
        border: _inputBorder,
        hintText: hintText,
        filled: true,
        prefixIcon: prefixIcon == null
            ? null
            : Icon(
                prefixIcon,
                size: 22,
                color: foregroundColor ?? AtomColors.defaultForegroundColor,
              ),
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: TextFormField(
          style: AppTextStyle.textFormField(foregroundColor ?? AtomColors.defaultTextColor),
          onSaved: onSaved,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          decoration: _inputDecoration,
        ),
      ),
    );
  }
}
