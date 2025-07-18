import 'package:flutter/material.dart';
import 'package:flutter_utils/constants.dart';

class HelpText extends StatelessWidget {
  final String? title;
  final double padding;
  const HelpText({super.key, this.title, this.padding = 30.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: padding),
          child: Opacity(
            opacity: 0.3,
            child: Image.asset('${SharedLibAssetLink.images}/quote.png', width: 50),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Text(
            title!,
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
