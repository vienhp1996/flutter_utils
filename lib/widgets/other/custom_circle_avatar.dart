import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/color/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double size;
  final double borderWidth;
  final String imageUrl;
  final Color? borderColor;

  const CustomCircleAvatar({
    super.key,
    this.size = 35.0,
    required this.imageUrl,
    this.borderWidth = 0.5,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          color: borderColor ?? HexColor('808080'),
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: imageUrl,
            placeholder: (context, url) => CircularProgressIndicator(
              backgroundColor: cTextSecondary.withOpacity(0.1),
              valueColor: AlwaysStoppedAnimation<Color>(cTextSecondary.withOpacity(0.3)),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
