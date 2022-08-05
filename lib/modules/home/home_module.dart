import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_app/modules/home/stores/tasks.dart';
import 'package:task_app/modules/home/view/home.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => Tasks()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const Home()),
      ];
}
