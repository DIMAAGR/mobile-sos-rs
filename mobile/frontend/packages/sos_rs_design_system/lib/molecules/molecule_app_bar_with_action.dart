import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/atoms/atom_app_bar.dart';
import 'package:sos_rs_design_system/atoms/atom_icon_button.dart';

enum _Action { edit, add }

class MoleculeAppBarWithAction extends StatelessWidget implements PreferredSizeWidget {
  final _Action _action;
  final String title;
  final VoidCallback? onAddPressed;
  final VoidCallback? onEditPressed;

  const MoleculeAppBarWithAction.add({
    required this.title,
    this.onAddPressed,
    super.key,
  })  : _action = _Action.add,
        onEditPressed = null;

  const MoleculeAppBarWithAction.edit({
    required this.title,
    this.onEditPressed,
    super.key,
  })  : _action = _Action.edit,
        onAddPressed = null;

  @override
  Widget build(BuildContext context) {
    return AtomAppBar(
      title: title,
      actions: [
        _action == _Action.add
            ? AtomIconButton(
                icon: Icons.add,
                hintText: 'Cadastrar Abrigo',
                onPressed: onAddPressed,
              )
            : AtomIconButton(
                icon: Icons.edit,
                hintText: 'Editar Abrigo',
                onPressed: onEditPressed,
              )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
