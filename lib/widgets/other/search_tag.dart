import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';

class SearchTag extends StatelessWidget {
  final String text;
  final Function? onClickSearch;

  const SearchTag({super.key, required this.text, this.onClickSearch});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClickSearch != null ? onClickSearch!() : null,
      splashColor: HexColor('EEEEEE').withOpacity(0.1),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: HexColor('EEEEEE')),
        padding: const EdgeInsets.only(top: 7, bottom: 5, left: 5, right: 5),
        child: Text(
          text,
          style: TextStyle(color: HexColor('636363')),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
