import 'package:flutter_modular/flutter_modular.dart';
import 'package:sos_rs/src/core/consts/routes.dart';
import 'package:sos_rs/src/module/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(AppRoutes.defaultMainRoute, module: DashboardModule());
  }
}
