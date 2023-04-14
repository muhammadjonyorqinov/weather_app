import 'package:flutter/material.dart';
import '/gen/colors.gen.dart';
import '/utils/core/dimensions.dart';

class WBackground extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;

  const WBackground({Key? key, this.child, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: Dimensions.radiusAll12,
          color: ColorName.white,
        ),
        margin: Dimensions.paddingV8H16,
        padding: Dimensions.paddingAll16,
        child: child,
      ),
    );
  }
}
