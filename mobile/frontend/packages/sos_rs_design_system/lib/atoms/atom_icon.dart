import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sos_rs_design_system/atoms/atom_icons_data.dart';

class AtomIcon extends StatelessWidget {
  const AtomIcon(this.icon, {super.key});

  final AtomIconsData icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon.path,
      fit: BoxFit.contain,
    );
  }
}
