import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function onPressed;
  final Widget? icon;

  const CustomFloatingActionButton({super.key, required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: cPrimary,
      child: icon ?? const Icon(Icons.add),
      onPressed: () => onPressed(),
    );
  }
}
