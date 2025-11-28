import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_utils/widgets/image/easy_image_viewer.dart';

void customShowImageViewer({
  required BuildContext context,
  String? imageUrl,
  String? assetPath,
  bool isBase64Image = false,
  void Function(String)? onSaveImage,
}) {
  late ImageProvider imageProvider;

  if (assetPath != null) {
    // Ảnh từ assets
    imageProvider = AssetImage(assetPath);
  } else if (isBase64Image && imageUrl != null) {
    // Ảnh base64
    imageProvider = MemoryImage(
      base64Decode(
        imageUrl.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), ''),
      ),
    );
  } else if (imageUrl != null) {
    // Ảnh mạng
    imageProvider = Image.network(imageUrl).image;
  } else {
    throw Exception("Cần truyền imageUrl hoặc assetPath");
  }

  showImageViewer(
    context,
    imageProvider,
    doubleTapZoomable: true,
    useSafeArea: true,
    listImageUrl: assetPath != null ? [assetPath] : [imageUrl!],
    swipeDismissible: true,
    onViewerDismissed: () {
      debugPrint("dismissed");
    },
    onSaveImage: (image) {
      if (onSaveImage != null) {
        onSaveImage(image);
      }
    },
  );
}
