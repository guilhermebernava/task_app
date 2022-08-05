import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_app/helpers/route_transition.dart';
import 'package:task_app/themes/app_colors.dart';
import 'package:task_app/themes/app_text_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Task App',
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: ThemeData(
        colorScheme: PrimaryAppColor.appMaterialColor,
        pageTransitionsTheme: AppPageTransitionsTheme.appPageTransitionTheme,
        textTheme: AppTextTheme.theme,
        scaffoldBackgroundColor: AppColors.lightBlack,
        backgroundColor: AppColors.darkPurple,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 42,
          shadowColor: AppColors.darkPurple,
        ),
      ),
    );
  }
}
