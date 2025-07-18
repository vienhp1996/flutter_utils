import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_utils/color/colors.dart';
import 'package:flutter_utils/widgets/arrow/back_button.dart';
import 'package:flutter_utils/widgets/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final String? param;
  final Function? callback;
  final List<Widget>? actions;
  final double? elevation;
  final Function? onBack;
  final Color backgroundColor;
  final Color backIconColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.param,
    this.callback,
    this.actions,
    this.elevation,
    this.onBack,
    this.backgroundColor = Colors.white,
    this.backIconColor = Colors.black,
  }) : preferredSize = const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          if (callback != null) {
            callback!();
          }
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: fontSizeScreenTitle,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      centerTitle: false,
      backgroundColor: backgroundColor,
      elevation: elevation ?? 0.1,
      shadowColor: HexColor('E9E9E9'),
      bottomOpacity: 0,
      leading: CustomBackButton(
        param: param,
        onBack: onBack,
        color: backIconColor,
      ),
      leadingWidth: leadingWidth,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      actions: actions ?? [],
    );
  }
}
