import 'package:sis_attendance/utils/acl_color.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

enum SpinKitType { wave, circle }

class SpinKitIndicator extends StatelessWidget {
  const SpinKitIndicator({Key? key, this.type = SpinKitType.wave})
      : super(key: key);

  final SpinKitType type;

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (type) {
      case SpinKitType.wave:
        widget = const SpinKitWave(
          color: AppColors.greenMight,
          size: 50.0,
        );
        break;
      case SpinKitType.circle:
        widget = const SpinKitFadingCircle(
          color: AppColors.greenMight,
          size: 50.0,
        );
    }
    return Center(child: widget);
  }
}
