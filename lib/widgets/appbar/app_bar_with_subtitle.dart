import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_utils/color/colors.dart';
import 'package:flutter_utils/widgets/arrow/back_button.dart';
import 'package:flutter_utils/widgets/styles.dart';

class AppBarWithSubTitle extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subTitle;
  final String? params;
  final Widget? customSubTitle;
  final double height;

  const AppBarWithSubTitle({
    super.key,
    required this.title,
    this.subTitle,
    this.customSubTitle,
    this.params,
    this.height = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: fontSizeScreenTitle,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          customSubTitle != null
              ? customSubTitle!
              : Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    '$subTitle',
                    style: ThemeText.textStyle12Weight400.copyWith(color: HexColor('363636')),
                    maxLines: 2,
                  ),
                ),
        ],
      ),
      leading: CustomBackButton(param: params),
      leadingWidth: leadingWidth,
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0.1,
      shadowColor: HexColor('E9E9E9'),
      bottomOpacity: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
