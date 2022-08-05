import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_app/modules/home/home_module.dart';
import 'package:task_app/modules/splash/view/splash.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const Splash()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
