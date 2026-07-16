import 'package:flutter/material.dart';
import '../../design_system/life_typography.dart';

/// A production-grade reusable text widget for LifeOS.
class LifeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? color;
  final _LifeTextType _type;

  const LifeText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.color,
  }) : _type = _LifeTextType.custom;

  const LifeText.displayLarge(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.displayLarge;

  const LifeText.headlineMedium(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.headlineMedium;

  const LifeText.titleLarge(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.titleLarge;

  const LifeText.bodyLarge(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.bodyLarge;

  const LifeText.bodyMedium(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.bodyMedium;

  const LifeText.bodySmall(this.text, {super.key, this.textAlign, this.overflow, this.maxLines, this.color})
      : style = null,
        _type = _LifeTextType.bodySmall;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyle().copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  TextStyle _getStyle() {
    switch (_type) {
      case _LifeTextType.displayLarge:
        return LifeTypography.displayLarge;
      case _LifeTextType.headlineMedium:
        return LifeTypography.headlineMedium;
      case _LifeTextType.titleLarge:
        return LifeTypography.titleLarge;
      case _LifeTextType.bodyLarge:
        return LifeTypography.bodyLarge;
      case _LifeTextType.bodyMedium:
        return LifeTypography.bodyMedium;
      case _LifeTextType.bodySmall:
        return LifeTypography.bodySmall;
      case _LifeTextType.custom:
        return style ?? LifeTypography.bodyMedium;
    }
  }
}

enum _LifeTextType {
  displayLarge,
  headlineMedium,
  titleLarge,
  bodyLarge,
  bodyMedium,
  bodySmall,
  custom,
}
