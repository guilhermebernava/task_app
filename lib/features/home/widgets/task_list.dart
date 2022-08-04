import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/get_x_controllers/tasks_controller.dart';
import '../../../core/widgets/task_item/task_item.dart';

class TaskList extends StatelessWidget {
  final Size size;

  const TaskList({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksController = Get.put(TasksControlelr());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: GetBuilder<TasksControlelr>(
          builder: (_) => ListView.builder(
            padding: EdgeInsets.only(
                bottom: size.height * 0.3, top: size.height * 0.01),
            shrinkWrap: true,
            itemBuilder: (context, index) => TaskItem(
              size: size,
              title: tasksController.tasks[index].title,
              complete: tasksController.tasks[index].complete,
            ),
            itemCount: tasksController.tasks.length,
          ),
        ),
      ),
    );
  }
}
