import 'package:flutter/material.dart';
import 'package:task_app/themes/app_colors.dart';

import 'splash_controller.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final SplashController _controller;

  @override
  void initState() {
    _controller = SplashController(this, context);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.purple,
      child: Center(
        child: AnimatedBuilder(
          animation: _controller.animation,
          builder: (_, __) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              boxShadow: [
                for (int i = 1; i <= 3; i++)
                  BoxShadow(
                    color: Colors.white
                        .withOpacity(_controller.animation.value / 150),
                    spreadRadius: _controller.animation.value * i,
                  ),
              ],
            ),
            child: const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 120,
            ),
          ),
        ),
      ),
    );
  }
}
