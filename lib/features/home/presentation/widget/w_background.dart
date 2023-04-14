import 'package:flutter/material.dart';
import '/gen/colors.gen.dart';
import '/utils/core/dimensions.dart';

class WBackground extends StatelessWidget {
  final Widget? child;

  const WBackground({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: Dimensions.radiusAll12,
        color: ColorName.white,
      ),
      margin: Dimensions.paddingV8H16,
      padding: Dimensions.paddingAll16,
      child: child,
    );
  }
}
