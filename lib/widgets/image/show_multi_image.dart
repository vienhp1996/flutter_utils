import 'package:flutter/material.dart';
import 'package:flutter_utils/widgets/image/easy_image_viewer.dart';

void customShowMultiImageViewer({
  required BuildContext context,
  required List listImageUrl,
  int initialIndex = 0,
}) async {
  List<NetworkImage> listImage = [];
  listImageUrl.forEach((element) {
    listImage.add(NetworkImage(element));
  });

  CustomImageProvider customImageProvider = CustomImageProvider(
    imageUrls: listImageUrl,
    initialIndex: initialIndex,
  );

  showImageViewerPager(
    context,
    customImageProvider,
    doubleTapZoomable: true,
    infinitelyScrollable: true,
    useSafeArea: true,
    onPageChanged: (page) {
      print("page changed to $page");
    },
    onViewerDismissed: (page) {
      print("dismissed while on page $page");
    },
    listImageUrl: listImageUrl,
  );
}

class CustomImageProvider extends EasyImageProvider {
  @override
  final int initialIndex;
  final List imageUrls;

  CustomImageProvider({required this.imageUrls, this.initialIndex = 0}) : super();

  @override
  ImageProvider<Object> imageBuilder(BuildContext context, int index) {
    return NetworkImage(imageUrls[index]);
  }

  @override
  int get imageCount => imageUrls.length;
}
