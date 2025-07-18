import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_utils/color/colors.dart';
import 'package:flutter_utils/widgets/arrow/back_button.dart';
import 'package:flutter_utils/widgets/styles.dart';

class CustomAppBarNoLeading extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final bool leading;
  final List<Widget>? actions;

  const CustomAppBarNoLeading({
    super.key,
    required this.title,
    this.fontSize = fontSizeScreenTitle,
    this.fontWeight = FontWeight.w600,
    this.leading = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: EdgeInsets.only(top: 5.h),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
          ),
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0.1,
      shadowColor: HexColor('E9E9E9'),
      bottomOpacity: 0,
      leading: leading ? const CustomBackButton() : null,
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0.h);
}
