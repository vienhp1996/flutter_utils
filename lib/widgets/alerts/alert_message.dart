import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_utils/color/colors.dart';

import 'alert_type.dart';

class AlertMessage extends StatefulWidget {
  final String? message;
  final String type;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final TextAlign? textAlign;
  final double fontSize;
  final bool useSp;

  const AlertMessage({
    Key? key,
    required this.message,
    required this.type,
    this.margin,
    this.padding,
    this.textAlign,
    this.fontSize = 16.0,
    this.useSp = false,
  }) : super(key: key);

  @override
  _AlertMessageState createState() => _AlertMessageState();
}

class _AlertMessageState extends State<AlertMessage> {
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
        _textColor = HexColor('721c24');
        _containerColor = HexColor('f8d7da');
        _borderColor = HexColor('f5c6cb');
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
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Text(
        widget.message ?? '',
        textAlign: widget.textAlign ?? TextAlign.center,
        style: TextStyle(
          fontSize: widget.useSp ? widget.fontSize.sp : widget.fontSize,
          fontWeight: FontWeight.w500,
          color: _textColor,
        ),
      ),
    );
  }
}
