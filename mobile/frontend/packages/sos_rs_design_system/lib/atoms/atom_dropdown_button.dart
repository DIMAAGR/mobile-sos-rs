import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';
import 'package:sos_rs_design_system/themes_and_styles/text_theme.dart';

class AtomDropdownButton extends StatelessWidget {
  final List<String> elements;
  final Function(String? data) onSelect;
  const AtomDropdownButton({
    super.key,
    required this.elements,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: AtomColors.defaultBorderColor, width: 2),
      borderRadius: BorderRadius.circular(8),
    );

    final focusedInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(8),
    );

    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField(
          hint: Text(elements[0], style: AppTextStyle.textFormField()),
          decoration: InputDecoration(
            border: inputBorder,
            focusedBorder: focusedInputBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          items: List.generate(
            elements.length,
            (index) => DropdownMenuItem(
              value: index == 0 ? null : elements[index],
              child: Text(elements[index], style: AppTextStyle.textFormField()),
            ),
          ),
          onChanged: onSelect),
    );
  }
}
