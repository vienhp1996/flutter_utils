import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_utils/color/colors.dart';
import 'package:flutter_utils/widgets/arrow/back_button.dart';
import 'package:flutter_utils/widgets/styles.dart';

class AppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? params;
  final List<Widget>? actions;
  final Function? onClickSearch;
  final Widget? customBackButton;

  const AppBarWithSearch({
    super.key,
    required this.title,
    this.params,
    this.actions,
    this.onClickSearch,
    this.customBackButton,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: fontSizeScreenTitle,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0.1,
      shadowColor: HexColor('E9E9E9'),
      bottomOpacity: 0,
      leading: customBackButton ?? CustomBackButton(param: params),
      leadingWidth: leadingWidth,
      actions: actions ??
          [
            Stack(
              children: [
                IconButton(
                  onPressed: () => onClickSearch!(),
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    color: cTextPrimary,
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: SizedBox(
                    width: 10,
                    height: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: cOffline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
