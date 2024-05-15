import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';
import 'package:sos_rs_design_system/themes_and_styles/text_theme.dart';

import '../atoms/atom_dropdown_button.dart';

class MoleculeSearchWithFilter extends StatefulWidget {
  final Function(String? data) onSearch;
  final Function(String? categoryName, String? object) onItemSelected;
  final List<Map<String, List<String>>> categories;
  final TextEditingController controller;

  const MoleculeSearchWithFilter({
    super.key,
    required this.onSearch,
    required this.controller,
    required this.categories,
    required this.onItemSelected,
  });

  @override
  State<MoleculeSearchWithFilter> createState() => _MoleculeSearchWithFilterState();
}

class _MoleculeSearchWithFilterState extends State<MoleculeSearchWithFilter> {
  bool _showFilter = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AtomTextFormField(
              width: MediaQuery.of(context).size.width - 88,
              hintText: 'Buscar por abrigo ou endereço',
              prefixIcon: Icons.search,
              onSaved: widget.onSearch,
              controller: widget.controller,
            ),
            const Spaces.hor(size: 8),
            IconButton(
              onPressed: () => setState(() {
                _showFilter = !_showFilter;
              }),
              icon: const Icon(Icons.filter_list, color: Colors.blue),
            )
          ],
        ),
        if (_showFilter) ...[
          const Spaces.ver(size: 8),
          const Divider(color: AtomColors.defaultBorderColor, thickness: 2),
          const Spaces.ver(size: 4),
          Text('Busca avançada\n', style: AppTextStyle.textFormField()),
          Text(
            'Você pode buscar pelo item que os abrigos precisam urgentemente'
            ' de doação ou por itens que os abrigos tem disponibilidade para doar.',
            style: AppTextStyle.textFormField(),
          ),
          const Spaces.ver(size: 16),
          ...List.generate(
            widget.categories.length,
            (index) => Column(
              children: [
                AtomDropdownButton(
                  elements: widget.categories[index].values.first,
                  onSelect: (value) => widget.onItemSelected(
                    widget.categories[index].keys.toString(),
                    value,
                  ),
                ),
                const Spaces.ver(size: 8),
              ],
            ),
          ),
          const Spaces.ver(size: 6),
          const Divider(color: AtomColors.defaultBorderColor, thickness: 2),
          const Spaces.ver(size: 8),
        ],
      ],
    );
  }
}
