import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClickableWrapper extends StatelessWidget {
  const ClickableWrapper(
      {Key? key, required this.child, this.onPressed, this.borderRadius})
      : super(key: key);
  final Widget child;
  final void Function()? onPressed;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onPressed,
            child: child,
          )),
    );
  }
}
