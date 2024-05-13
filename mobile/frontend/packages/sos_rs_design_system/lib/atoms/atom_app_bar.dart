import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/consts/colors.dart';
import 'package:sos_rs_design_system/themes_and_styles/text_theme.dart';

class AtomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const AtomAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBar,
      foregroundColor: Colors.white,
      elevation: 0,
      actions: actions,
      title: Text(
        style: AppTextStyle.appBarTitle,
        title,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
