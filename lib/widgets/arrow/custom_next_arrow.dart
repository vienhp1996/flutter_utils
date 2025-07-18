import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_utils/color/colors.dart';

class CustomWorkScheduleArrow extends StatelessWidget {
  final Function? onClick;
  final bool isNext;

  const CustomWorkScheduleArrow({super.key, this.onClick, this.isNext = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        if (onClick != null) {
          onClick!();
        }
      },
      child: Container(
        height: 50,
        width: 30.r,
        child: Icon(
          isNext ? Icons.arrow_forward_ios_rounded : Icons.arrow_back_ios_rounded,
          color: cPrimary,
          size: 12.r,
        ),
      ),
    );
  }
}
