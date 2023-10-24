import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.teal,
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.purple
];

class AppTheme {
  final int selectColor;
  final bool isDarkmode;

  AppTheme({this.selectColor = 0, this.isDarkmode = false})
      : assert(selectColor >= 0, 'selected color must be greater then 0'),
        assert(selectColor < colorList.length,
            'selected color must be less or equal than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectColor],
      appBarTheme: const AppBarTheme(centerTitle: false));

  AppTheme copyWith({int? selectColor, bool? isDarkmode}) => AppTheme(
      selectColor: selectColor ?? this.selectColor,
      isDarkmode: isDarkmode ?? this.isDarkmode);
}
