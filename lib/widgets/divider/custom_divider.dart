import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final Color? color;

  const CustomDivider({Key? key, this.height, this.thickness, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness ?? 0,
      height: height ?? 1,
      color: color ?? HexColor('#E9E9E9'),
    );
  }
}
