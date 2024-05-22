import 'package:fake_store/core/constants/colors.dart';
import 'package:flutter/material.dart';


class JBottomSheetTheme {
  JBottomSheetTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColor.white,
    modalBackgroundColor: JColor.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

// +++++++---------------------------- DARK THEME ----------------------------+++++++

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColor.black,
    modalBackgroundColor: JColor.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
