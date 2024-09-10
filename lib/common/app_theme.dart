import 'package:sis_attendance/common/app_string.dart';
import 'package:sis_attendance/common/app_style.dart';
import 'package:flutter/material.dart';

import '../utils/acl_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightAppTheme = ThemeData(
    textTheme: TextTheme(),
    appBarTheme: const AppBarTheme(
      color: AppColors.blueDark,
      centerTitle: true,
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.blueDark, width: 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        border: inputBorder),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:  AppColors.blueDark,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.blueDark,
    ),
    fontFamily: AppString.appFont,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black54,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
        ),
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      dialHandColor:  AppColors.blueDark,
      hourMinuteColor: MaterialStateColor.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppColors.blueDark
              : Colors.black12),
      hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? Colors.black54
              : Colors.grey),
      dayPeriodBorderSide: const BorderSide(color: Colors.grey),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      dayPeriodColor: Colors.transparent,
      dayPeriodTextColor: MaterialStateColor.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppColors.blueDark
              : Colors.black12),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black12),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
