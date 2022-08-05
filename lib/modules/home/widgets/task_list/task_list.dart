import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:task_app/modules/home/stores/tasks.dart';
import '../task_item/task_item.dart';

class TaskList extends StatelessWidget {
  final Size size;

  const TaskList({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksStore = Modular.get<Tasks>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Observer(
          builder: (_) => ListView.builder(
            padding: EdgeInsets.only(
              bottom: size.height * 0.3,
              top: size.height * 0.01,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) => TaskItem(
              size: size,
              title: tasksStore.tasks[index].title,
              complete: tasksStore.tasks[index].complete,
            ),
            itemCount: tasksStore.tasks.length,
          ),
        ),
      ),
    );
  }
}
