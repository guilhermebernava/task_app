import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/task.dart';

class TasksControlelr extends GetxController {
  final List<Task> _tasks = [
    Task(title: '1', complete: 0.1, description: ''),
    Task(title: '2', complete: 0.5, description: ''),
    Task(title: '3', complete: 1, description: ''),
  ];

  List<Task> get tasks => [..._tasks];

  void addTask() {
    _tasks.add(Task(title: 'test', complete: 0.5, description: 'tests'));
    update();
  }
}

class TestController extends GetxController {
  String title = 'test';

  void updateString(String t) {
    title = t;
    update();
  }
}
