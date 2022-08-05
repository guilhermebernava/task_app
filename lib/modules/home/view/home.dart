import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../stores/tasks.dart';
import '../widgets/task_list/task_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tasksStore = Modular.get<Tasks>();

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: false,
            snap: false,
            title: Text(
              'Your Tasks',
              textAlign: TextAlign.center,
            ),
            shape: RoundedRectangleBorder(
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
        onPressed: () {
          tasksStore.add();
        },
        child: const Icon(
          Icons.add_circle_outlined,
          size: 50,
        ),
      ),
    );
  }
}
