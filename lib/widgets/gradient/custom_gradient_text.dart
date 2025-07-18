import 'package:flutter/material.dart';

class CustomGradientText extends StatelessWidget {
  final Widget child;
  final LinearGradient? gradient;

  const CustomGradientText({super.key, required this.child, this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient != null
            ? gradient!.createShader(
                Rect.fromLTWH(0, 3, bounds.width, bounds.height),
              )
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF6F4BFF),
                  Color(0xFF0560A6),
                ],
              ).createShader(
                Rect.fromLTWH(0, 3, bounds.width, bounds.height),
              );
      },
      child: child,
    );
  }
}
