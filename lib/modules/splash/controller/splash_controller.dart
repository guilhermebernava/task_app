import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  late final AnimationController controller;
  late final Animation<double> animation;

  SplashController(TickerProvider ticket, BuildContext context) {
    controller = AnimationController(
        vsync: ticket, duration: const Duration(milliseconds: 1500));

    animation = Tween(begin: 0.0, end: 24.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.forward().then((value) => controller.reverse()).then((value) {
      controller.dispose();
      Modular.to.navigate('/home/');
    });
  }
}
