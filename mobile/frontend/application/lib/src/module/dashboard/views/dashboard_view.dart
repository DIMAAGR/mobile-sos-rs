import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  void _onLoginPressed() {}
  void _onForgotPasswordPressed() {}
  void _onSignupPressed() {}

  final Map<String, TextEditingController> _textControllers = {
    'email': TextEditingController(),
    'password': TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AtomAppBar(title: 'SOS Rio Grande do Sul'),
    );
  }
}
