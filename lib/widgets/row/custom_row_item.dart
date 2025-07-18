import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_utils/widgets/divider/custom_divider.dart';
import 'package:flutter_utils/widgets/styles.dart';

class RowItem extends StatelessWidget {
  final String? title;
  final dynamic value;
  final bool divider;
  final bool hasDetail;
  final double fontSize;
  final bool bolder;
  final Color color;
  final Function? onClick;
  final TextAlign textAlign;
  final int maxLine;
  final bool isUsingCustomDivider;
  final bool isCenter;
  final bool useSp;
  final bool useExpandedInTittle;

  const RowItem({
    super.key,
    required this.title,
    required this.value,
    this.divider = true,
    this.hasDetail = false,
    this.fontSize = fontSizeDefault,
    this.bolder = false,
    this.color = Colors.black,
    this.onClick,
    this.textAlign = TextAlign.right,
    this.maxLine = 2,
    this.isUsingCustomDivider = true,
    this.isCenter = false,
    this.useSp = true,
    this.useExpandedInTittle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            useExpandedInTittle
                ? Expanded(
                    child: Text(
                      title.toString(),
                      style: TextStyle(fontSize: useSp ? fontSize.sp : fontSize),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  )
                : isCenter
                    ? Expanded(
                        child: Text(
                          title.toString(),
                          style: TextStyle(fontSize: useSp ? fontSize.sp : fontSize),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    : Text(
                        title.toString(),
                        style: TextStyle(fontSize: useSp ? fontSize.sp : fontSize),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
            Expanded(
              child: InkWell(
                onTap: hasDetail && onClick != null
                    ? () {
                        onClick!();
                      }
                    : null,
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  alignment: isCenter ? Alignment.centerLeft : Alignment.centerRight,
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      color: color,
                      fontSize: useSp ? fontSize.sp : fontSize,
                      fontWeight: bolder ? FontWeight.bold : FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: maxLine,
                    textAlign: textAlign,
                  ),
                ),
              ),
            ),
          ],
        ),
        divider
            ? Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: isUsingCustomDivider ? const CustomDivider() : const Divider(),
              )
            : const SizedBox(),
      ],
    );
  }
}
