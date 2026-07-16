import 'package:flutter/material.dart';

/// Centralized border radius tokens for LifeOS.
class LifeRadius {
  LifeRadius._();

  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double round = 999.0;

  // BorderRadius helpers
  static const BorderRadius borderRadiusXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius borderRadiusS = BorderRadius.all(Radius.circular(s));
  static const BorderRadius borderRadiusM = BorderRadius.all(Radius.circular(m));
  static const BorderRadius borderRadiusL = BorderRadius.all(Radius.circular(l));
  static const BorderRadius borderRadiusXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius borderRadiusRound = BorderRadius.all(Radius.circular(round));
}
