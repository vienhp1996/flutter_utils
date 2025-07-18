import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final List<InlineSpan>? children;
  final TextStyle? style;
  final TextStyle defaultStyle;
  final TextAlign textAlign;
  final double? textScaleFactor;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomRichText({
    super.key,
    required this.text,
    this.children,
    this.style,
    this.textAlign = TextAlign.left,
    this.textScaleFactor,
    this.maxLines,
    this.overflow,
    this.defaultStyle = const TextStyle(height: 1.36, fontFamily: 'Apple'),
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      maxLines: maxLines,
      text: TextSpan(
        text: text,
        style: defaultStyle.merge(style),
        children: children,
      ),
    );
  }
}
