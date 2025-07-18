import 'package:flutter/material.dart';
import 'package:flutter_utils/constants.dart';

class CustomEmpty extends StatelessWidget {
  final String title;

  const CustomEmpty(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.3,
          child: Image.asset('${SharedLibAssetLink.images}/empty.png', width: 100),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
