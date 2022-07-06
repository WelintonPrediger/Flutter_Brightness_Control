import 'package:ex_control_brightness/app/modules/home/_export_files.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

  @override
  List<Bind<Object>> get binds => [

  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

}