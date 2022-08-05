import 'package:mobx/mobx.dart';
import 'package:task_app/modules/home/models/task.dart';

// Include generated file
part 'tasks.g.dart';

// This is the class used by rest of your codebase
class Tasks = AbstractTasks with _$Tasks;

// The store-class
abstract class AbstractTasks with Store {
  @observable
  ObservableList<Task> tasks = ObservableList<Task>.of([
    Task(title: '1', complete: 0.2, description: ''),
    Task(title: '2', complete: 0.4, description: ''),
    Task(title: '3', complete: 0.6, description: '')
  ]);

  @action
  void add() {
    tasks.add(Task(title: 'teste', complete: 1, description: ''));
  }
}
