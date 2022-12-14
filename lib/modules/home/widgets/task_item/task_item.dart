import 'package:flutter/material.dart';
import 'package:task_app/themes/app_colors.dart';
import 'package:task_app/themes/app_text_style.dart';

import '../container_image/container_image.dart';
import '../custom_icon_button/custom_icon_button.dart';
import '../progress_bar/progress_bar.dart';

class TaskItem extends StatefulWidget {
  final Size size;
  final String title;
  final double complete;

  const TaskItem({
    Key? key,
    required this.size,
    required this.title,
    required this.complete,
  }) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return ContainerImage(
      height: widget.size.height * 0.4,
      image:
          'https://criticalhits.com.br/wp-content/uploads/2020/07/cosplayer-luffy.jpg',
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: AppColors.lightPurple,
          ),
          width: double.infinity,
          height: widget.size.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: AppTextStyle.taskTitle,
                  overflow: TextOverflow.ellipsis,
                ),
                ProgressBar(value: widget.complete),
                SizedBox(
                  height: widget.size.height * 0.03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${(widget.complete * 100).toStringAsFixed(2)}% complete',
                        style: AppTextStyle.taskSubtitle,
                      ),
                      CustomIconButton(
                        onTap: () {},
                        icon: Icons.arrow_drop_down,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
