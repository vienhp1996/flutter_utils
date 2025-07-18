import 'package:flutter/material.dart';

import 'screen_loading.dart';

class Loading extends StatelessWidget {
  final double height;

  const Loading({super.key, this.height = 170.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: const Center(
        child: ScreenLoading(),
      ),
    );
  }
}
