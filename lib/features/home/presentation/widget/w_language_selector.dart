import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '/utils/core/dimensions.dart';
import '/utils/core/app_constants.dart';

class WLanguageSelector extends StatelessWidget {
  const WLanguageSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: Dimensions.radiusAll12),
      icon: const Icon(Icons.language),
      initialValue: context.locale,
      itemBuilder: (context) => AppConstants.languages
          .map(
            (type) => PopupMenuItem(
              value: type,
              child: Text(
                type.countryCode ?? '',
              ),
            ),
          )
          .toList(),
      onSelected: (v) async {
        await context.setLocale(v);
      },
    );
  }
}
