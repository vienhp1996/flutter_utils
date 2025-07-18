import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomArrowBack extends StatelessWidget {
  final Color? color;
  final double? size;

  const CustomArrowBack({
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_back_ios_rounded,
      size: size ?? 12.r,
      color: color ?? Colors.grey,
    );
  }
}
