import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';

class TextTokens {
  static const Color _defaultColor = ColorTokens.black;

  static TextStyle titleLg({BuildContext? context, Color? color, double? lineHeight}) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: color ?? _defaultColor,
      );

  static TextStyle titleMd({BuildContext? context, Color? color, double? lineHeight}) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: color ?? _defaultColor,
      );

  static TextStyle titleSm({BuildContext? context, Color? color, double? lineHeight}) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: color ?? _defaultColor,
      );

  static TextStyle body({BuildContext? context, Color? color, double? lineHeight, FontWeight? fontWeight}) => TextStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? _defaultColor,
      );
}
