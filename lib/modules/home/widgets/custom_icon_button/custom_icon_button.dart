import 'package:flutter/material.dart';

class CustomIconButton extends InkWell {
  CustomIconButton({
    Key? key,
    required VoidCallback onTap,
    required IconData icon,
    Color color = Colors.white,
  }) : super(
          key: key,
          onTap: onTap,
          child: Icon(
            icon,
            color: color,
          ),
        );
}
