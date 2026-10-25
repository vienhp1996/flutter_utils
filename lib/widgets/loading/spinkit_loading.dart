import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Loading 3 chấm tròn nảy lần lượt (tự vẽ, không phụ thuộc `flutter_spinkit`).
///
/// Khung rộng `size * 2`, cao [size]; mỗi chấm đường kính `size / 2`, chấm sau trễ 0.2 chu kỳ (1400ms).
class SpinkitLoading extends StatefulWidget {
  final double size;
  final Color color;

  const SpinkitLoading({super.key, this.size = 18, this.color = Colors.white});

  @override
  State<SpinkitLoading> createState() => _SpinkitLoadingState();
}

class _SpinkitLoadingState extends State<SpinkitLoading> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 1400))..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Tỉ lệ phóng (0 → 1) của chấm thứ [index] tại thời điểm [t] (0 → 1) trong chu kỳ.
  static double _scaleOf(double t, int index) => (math.sin((t - index * 0.2) * 2 * math.pi) + 1) / 2;

  @override
  Widget build(BuildContext context) {
    final dot = DecoratedBox(decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle));
    return SizedBox(
      width: widget.size * 2,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (i) => Transform.scale(
              scale: _scaleOf(_controller.value, i),
              child: SizedBox.square(dimension: widget.size / 2, child: child),
            ),
          ),
        ),
        child: dot,
      ),
    );
  }
}
