import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';
import 'alert_type.dart';

class AlertMessageWithIcon extends StatefulWidget {
  final String? message;
  final String type;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final TextAlign? textAlign;
  final double fontSize;
  final Icon icon;
  final bool useBoxShadow;
  final Color? textColor;
  final FontWeight fontWeight;

  const AlertMessageWithIcon({
    Key? key,
    required this.message,
    required this.type,
    required this.icon,
    this.margin,
    this.padding,
    this.textAlign,
    this.fontSize = 16.0,
    this.useBoxShadow = true,
    this.textColor,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  _AlertMessageWithIconState createState() => _AlertMessageWithIconState();
}

class _AlertMessageWithIconState extends State<AlertMessageWithIcon> {
  Color _textColor = HexColor('fff3cd');
  Color _containerColor = HexColor('fff3cd');
  Color _borderColor = HexColor('ffeeba');

  @override
  void initState() {
    super.initState();
    if (widget.type == AlertType.infor) {
      setState(() {
        _textColor = HexColor('0c5460');
        _containerColor = HexColor('d1ecf1');
        _borderColor = HexColor('bee5eb');
      });
    }
    if (widget.type == AlertType.warning) {
      setState(() {
        _textColor = HexColor('664d03');
        _containerColor = HexColor('ffecb5');
        _borderColor = HexColor('ffecb5');
      });
    }
    if (widget.type == AlertType.danger) {
      setState(() {
        _textColor = HexColor('F03553');
        _containerColor = HexColor('F03553').withOpacity(0.08);
        _borderColor = HexColor('f5c6cb').withOpacity(0.08);
      });
    }
    if (widget.type == AlertType.secondary) {
      setState(() {
        _textColor = cTextPrimary;
        _containerColor = HexColor('fefefe');
        _borderColor = Colors.white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: _containerColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _borderColor),
        boxShadow: [
          widget.useBoxShadow
              ? BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                )
              : const BoxShadow(),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.icon,
          const Padding(padding: EdgeInsets.only(right: 15)),
          Expanded(
            child: Text(
              widget.message ?? '',
              textAlign: widget.textAlign ?? TextAlign.left,
              style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                color: widget.textColor ?? _textColor,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
