import 'package:flutter/material.dart';

import '../../core/widgets/task_item/task_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 50,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(67, 122),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Your tasks',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      TaskItem(
                        size: size,
                      ),
                      TaskItem(
                        size: size,
                      ),
                      TaskItem(
                        size: size,
                      ),
                      TaskItem(
                        size: size,
                      ),
                      TaskItem(
                        size: size,
                      ),
                      TaskItem(
                        size: size,
                      ),
                      SizedBox(
                        height: size.height * 0.3,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
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
