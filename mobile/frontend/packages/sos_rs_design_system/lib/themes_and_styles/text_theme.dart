import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sos_rs_design_system/atoms/atom_colors.dart';

abstract class AppTextStyle {
  static TextStyle get appBarTitle => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );

  static TextStyle textFormField([Color? color]) => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: color ?? AtomColors.defaultTextColor,
      );
  static TextStyle get attentionCard => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AtomColors.attentionCardTextColor,
      );
}
