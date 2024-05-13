import 'package:flutter_modular/flutter_modular.dart';
import 'package:sos_rs/src/module/dashboard/views/dashboard_view.dart';

class DashboardModule extends Module {
  void _controllers(Injector i) {}
  void _usecases(Injector i) {}
  void _general(Injector i) {}

  @override
  void binds(i) {
    _controllers(i);
    _usecases(i);
    _general(i);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (ctx) => const DashboardView());
  }
}
