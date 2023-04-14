import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '/utils/core/styles.dart';
import '../../gen/localization_keys.dart';
import '../core/dimensions.dart';

class WError extends StatelessWidget {
  String? message;
  final TextStyle? style;
  final int? maxLines;
  final EdgeInsets? textPadding;
  final bool hasFlexibleHeight;
  final VoidCallback? onPressed;

  WError({
    required this.message,
    this.onPressed,
    this.textPadding,
    this.maxLines,
    this.hasFlexibleHeight = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          hasFlexibleHeight ? null : MediaQuery.of(context).size.height - 116,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: textPadding ?? Dimensions.paddingH16,
            child: Text(
              (message ?? '').tr(),
              style: style ?? kWhiteStyle16w600,
              maxLines: maxLines,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: Dimensions.paddingAll16,
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                LocalizationKeys.update.tr(),
                style: kWhiteStyle20w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
