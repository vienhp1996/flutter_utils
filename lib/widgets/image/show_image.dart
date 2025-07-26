import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_utils/widgets/image/easy_image_viewer.dart';

void customShowImageViewer({
  required BuildContext context,
  required String imageUrl,
  bool isBase64Image = false,
  void Function(String)? onSaveImage,
}) async {
  ImageProvider imageProvider;

  if (isBase64Image) {
    imageProvider = MemoryImage(base64Decode(imageUrl.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '')));
  } else {
    imageProvider = Image.network(imageUrl).image;
  }
  showImageViewer(
    context,
    imageProvider,
    doubleTapZoomable: true,
    useSafeArea: true,
    listImageUrl: [imageUrl],
    onViewerDismissed: () {
      print("dismissed");
    },
    swipeDismissible: true,
    onSaveImage: (image) {
      // Handle the save image action here
      if (onSaveImage != null) {
        onSaveImage(image);
      }
    },
  );
}
