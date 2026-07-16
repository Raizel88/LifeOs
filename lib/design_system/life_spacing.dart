import 'package:flutter/material.dart';

/// Centralized spacing tokens for LifeOS.
class LifeSpacing {
  LifeSpacing._();

  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  static const double huge = 40.0;
  static const double giant = 48.0;
  static const double massive = 64.0;

  // Semantic Spacing
  static const double pagePadding = l;
  static const double elementPadding = s;
  static const double cardPadding = l;

  // EdgeInsets helpers
  static const EdgeInsets edgeInsetsAllXs = EdgeInsets.all(xs);
  static const EdgeInsets edgeInsetsAllS = EdgeInsets.all(s);
  static const EdgeInsets edgeInsetsAllM = EdgeInsets.all(m);
  static const EdgeInsets edgeInsetsAllL = EdgeInsets.all(l);
  static const EdgeInsets edgeInsetsAllXl = EdgeInsets.all(xl);
  static const EdgeInsets edgeInsetsAllXxl = EdgeInsets.all(xxl);

  static const EdgeInsets edgeInsetsHorizontalS = EdgeInsets.symmetric(horizontal: s);
  static const EdgeInsets edgeInsetsHorizontalM = EdgeInsets.symmetric(horizontal: m);
  static const EdgeInsets edgeInsetsHorizontalL = EdgeInsets.symmetric(horizontal: l);

  static const EdgeInsets edgeInsetsVerticalS = EdgeInsets.symmetric(vertical: s);
  static const EdgeInsets edgeInsetsVerticalM = EdgeInsets.symmetric(vertical: m);
  static const EdgeInsets edgeInsetsVerticalL = EdgeInsets.symmetric(vertical: l);
}
