import 'package:flutter/material.dart';

class RouteServices {
  static void redirectNoReturn(BuildContext context, String routeName) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  static void redirectWithReturn(BuildContext context, String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  static void returnWithResult(BuildContext context, bool result) {
    Navigator.of(context).pop(result);
  }
}
