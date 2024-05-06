import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: ZColors.lightGrey,
      side: const BorderSide(color: ZColors.lightGrey),
      textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
    )
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
        backgroundColor: ZColors.lightGrey,
        side: const BorderSide(color: ZColors.lightGrey),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
    )
  );
}