import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _onAddPressed() {}
  void _onSearch(String? data) {}
  void _onItemSelected(String? category, String? value) {}

  Map<String, List<String>> itemStatus = {
    'Status': ['Status do item no abrigo', 'Disponível para doação', 'Precisa', 'Necessita Urgente']
  };

  @override
  Widget build(BuildContext context) {
    return DashboardTemplate(
      onAddPressed: _onAddPressed,
      onSearch: _onSearch,
      searchController: searchController,
      categories: [itemStatus],
      onItemSelected: _onItemSelected,
    );
  }
}
