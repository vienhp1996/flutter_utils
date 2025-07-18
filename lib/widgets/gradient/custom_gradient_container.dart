import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;
  final double radius;
  final Gradient gradient;
  final double strokeWidth;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;

  const CustomGradientContainer({
    super.key,
    required this.radius,
    required this.gradient,
    required this.child,
    this.callback,
    this.strokeWidth = 1.0,
    this.padding,
    this.margin,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientPainter(strokeWidth: strokeWidth, radius: radius, gradient: gradient),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: callback,
          child: Container(
            margin: margin,
            padding: padding,
            decoration: decoration,
            child: child,
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter({required double strokeWidth, required double radius, required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect =
        Rect.fromLTWH(strokeWidth, strokeWidth, size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
