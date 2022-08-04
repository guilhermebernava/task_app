import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/get_x_controllers/tasks_controller.dart';
import 'package:task_app/features/home/widgets/task_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // todos os controller são SINGLETON e GLOBAIS
    final test = Get.put(TestController());
    Future.delayed(const Duration(seconds: 5)).then((value) {
      test.updateString('joao');
    });

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: false,
            snap: false,
            title: GetBuilder<TestController>(
              builder: (_) => Text(
                test.title,
                textAlign: TextAlign.center,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(67, 122),
              ),
            ),
          )
        ],
        body: TaskList(
          size: size,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_circle_outlined,
          size: 50,
        ),
      ),
    );
  }
}
