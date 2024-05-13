import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sos_rs/src/core/main_app/main_app.dart';
import 'package:sos_rs/src/module/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MainApp()));
}
