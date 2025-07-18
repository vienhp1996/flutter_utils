import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomArrowForward extends StatelessWidget {
  final Color? color;
  final double? size;

  const CustomArrowForward({
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      size: size ?? 12.r,
      color: color ?? Colors.grey,
    );
  }
}
