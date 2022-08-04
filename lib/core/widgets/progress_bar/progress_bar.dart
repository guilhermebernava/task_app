import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';

class ProgressBar extends ClipRRect {
  ProgressBar({Key? key, required double value, double height = 8})
      : super(
          key: key,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.white,
            color: AppColors.purple,
            minHeight: height,
          ),
        );
}
