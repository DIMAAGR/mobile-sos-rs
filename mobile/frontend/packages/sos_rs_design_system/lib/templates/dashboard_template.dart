import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/atoms/atom_attention_card.dart';
import 'package:sos_rs_design_system/molecules/molecule_search_with_filter.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';

class DashboardTemplate extends StatelessWidget {
  final VoidCallback onAddPressed;
  final Function(String? data) onSearch;
  final TextEditingController searchController;
  final List<Map<String, List<String>>> categories;
  final void Function(String? categoryName, String? object) onItemSelected;

  const DashboardTemplate({
    super.key,
    required this.onAddPressed,
    required this.searchController,
    required this.onSearch,
    required this.categories,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MoleculeAppBarWithAction.add(
        title: 'SOS Rio Grande do Sul',
        onAddPressed: onAddPressed,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
            child: Column(
              children: [
                const AtomAttentionCard(
                  'Você pode consultar a lista de abrigos disponíveis. '
                  'Ver e editar os itens que necessitam de doações.',
                ),
                const Spaces.ver(size: 12),
                MoleculeSearchWithFilter(
                  onSearch: onSearch,
                  controller: searchController,
                  categories: categories,
                  onItemSelected: onItemSelected,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
