import 'package:flutter/material.dart';
import 'package:flutter_utils/widgets/styles.dart';

class CustomBackButton extends StatelessWidget {
  final String? param;
  final Function? onBack;
  final Color color;

  const CustomBackButton({super.key, this.param, this.onBack, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_rounded,
        size: fontSizeLeadingIcon,
        color: color,
      ),
      iconSize: fontSizeLeadingIcon,
      onPressed: () {
        if (onBack != null) {
          onBack!();
        } else {
          Navigator.of(context).pop(param);
        }
      },
    );
  }
}
