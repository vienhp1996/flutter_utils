import 'package:flutter/material.dart';

double viewWidth(double percent, BuildContext context) {
  return MediaQuery.of(context).size.width * percent;
}

double viewHeight(double percent, BuildContext context) {
  return MediaQuery.of(context).size.height * percent;
}

double sizeSafeAreaTop(double percent, BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double sizeSafeAreaBottom(double percent, BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}

bool isTabletDevice(BuildContext context) {
  // The equivalent of the "smallestWidth" qualifier on Android.
  var shortestSide = MediaQuery.of(context).size.shortestSide;
  return shortestSide > 600;
}
