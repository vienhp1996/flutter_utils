import 'package:flutter/cupertino.dart';

class CustomSwitch extends StatefulWidget {
  final bool? value;
  final double scale;
  final Function? onChanged;
  final bool readOnly;

  const CustomSwitch({super.key, this.value = false, this.scale = 0.75, this.onChanged, this.readOnly = false});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool? selected = false;

  @override
  void initState() {
    super.initState();
    selected = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: widget.scale,
      child: CupertinoSwitch(
        value: selected!,
        onChanged: widget.readOnly
            ? null
            : (value) {
                setState(() {
                  selected = value;
                });
                widget.onChanged!(value);
              },
      ),
    );
  }
}
