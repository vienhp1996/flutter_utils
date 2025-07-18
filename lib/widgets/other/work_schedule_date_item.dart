import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';

import '../styles.dart';

class WorkScheduleDateItem extends StatelessWidget {
  final Function? onClick;
  final String? dayOfWeek;
  final String? date;
  final bool isSelected;

  const WorkScheduleDateItem({
    super.key,
    required this.dayOfWeek,
    required this.date,
    this.onClick,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onClick != null) {
          onClick!();
        }
      },
      child: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 6, right: 6),
        decoration: BoxDecoration(
          color: isSelected ? HexColor('363636') : HexColor('F5F5F5'),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(
              '$dayOfWeek',
              style: ThemeText.textStyle12Weight800.copyWith(color: isSelected ? Colors.white : cTextPrimary),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                '$date',
                style: ThemeText.textStyle11Weight500.copyWith(color: isSelected ? Colors.white : cTextPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
