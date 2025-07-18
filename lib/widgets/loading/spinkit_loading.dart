import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinkitLoading extends StatelessWidget {
  final double size;
  final Color color;

  const SpinkitLoading({super.key, this.size = 18, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(size: size, color: color);
  }
}
