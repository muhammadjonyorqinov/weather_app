import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class WLoader extends StatelessWidget {
  final Color? color;

  const WLoader({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Center(
            child: CupertinoActivityIndicator(
              color: color ?? ColorName.white,
            ),
          )
        : Center(
            child: CircularProgressIndicator(
              color: color ?? ColorName.white,
            ),
          );
  }
}
