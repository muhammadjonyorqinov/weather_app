import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';
import 'package:weather_app/gen/colors.gen.dart';
import 'package:weather_app/utils/core/dimensions.dart';
import 'package:weather_app/utils/core/styles.dart';

class WCard extends StatelessWidget {
  final String? title;
  final SvgGenImage? icon;

  const WCard({
    Key? key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: Dimensions.radiusAll16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon?.svg(height: 48, color: ColorName.lightBlue) ?? const SizedBox(),
          Padding(
            padding: Dimensions.paddingTop24,
            child: Text(
              title ?? '',
              style: kBlackStyle14w600,
            ),
          ),
        ],
      ),
    );
  }
}
