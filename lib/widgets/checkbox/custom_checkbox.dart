import 'package:flutter/material.dart';

/// A customizable checkbox that wraps Flutter's built-in [Checkbox] widgets.
class CustomCheckBox extends StatelessWidget {
  /// Whether the checkbox is checked.
  final bool? value;

  /// Called when the value of the checkbox should change.
  final ValueChanged<bool?>? onChanged;

  /// The color to use when this checkbox is checked.
  final Color? activeColor;

  /// The color to use for the check icon when this checkbox is checked.
  final Color? checkColor;

  /// The color that fills the checkbox when it's selected.
  final WidgetStateProperty<Color?>? fillColor;

  /// The color for the checkbox's border.
  final Color? borderColor;

  /// The width of the checkbox's border.
  final double? borderWidth;

  /// The radius of the checkbox's corners.
  final double? borderRadius;

  /// The splash radius of the checkbox.
  final double? splashRadius;

  /// The size of the checkbox.
  final double? size;

  /// Optional widgets to display next to the checkbox.
  final Widget? label;

  /// Whether the checkbox is disabled.
  final bool isDisabled;

  /// The visual density of the checkbox.
  final VisualDensity? visualDensity;

  /// The shape of the checkbox.
  final OutlinedBorder? shape;

  /// The side (border) of the checkbox.
  final BorderSide? side;

  /// The focus node for the checkbox.
  final FocusNode? focusNode;

  /// Whether the checkbox has input focus.
  final bool autofocus;

  /// The cursor for a mouse pointer when it enters or is hovering over the checkbox.
  final MouseCursor? mouseCursor;

  /// The overlay color of the checkbox when pressed or hovered.
  final WidgetStateProperty<Color?>? overlayColor;

  const CustomCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.checkColor,
    this.fillColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.splashRadius,
    this.size = 24.0,
    this.label,
    this.isDisabled = false,
    this.visualDensity,
    this.shape,
    this.side,
    this.focusNode,
    this.autofocus = false,
    this.mouseCursor,
    this.overlayColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a custom border side if borderColor or borderWidth is specified
    BorderSide? customSide;
    if (borderColor != null || borderWidth != null) {
      customSide = BorderSide(
        color: borderColor ?? Theme.of(context).dividerColor,
        width: borderWidth ?? 1.0,
      );
    }

    // Create a custom shape if borderRadius is specified
    OutlinedBorder? customShape;
    if (borderRadius != null) {
      customShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius!),
      );
    }

    // Determine the effective side and shape
    final effectiveSide = side ?? customSide;
    final effectiveShape = shape ?? customShape;

    return SizedBox(
      width: size,
      height: size,
      child: Checkbox(
        value: value,
        onChanged: isDisabled ? null : onChanged,
        activeColor: activeColor,
        checkColor: checkColor,
        fillColor: fillColor,
        splashRadius: splashRadius,
        visualDensity: visualDensity,
        shape: effectiveShape,
        side: effectiveSide,
        focusNode: focusNode,
        autofocus: autofocus,
        mouseCursor: mouseCursor,
        overlayColor: overlayColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
