import 'package:hive_ce_flutter/hive_ce_flutter.dart';

/// Service to handle Hive local storage initialization.
class HiveService {
  HiveService._();

  /// Initializes Hive for Flutter.
  static Future<void> initialize() async {
    await Hive.initFlutter();
    // No boxes are opened during initial setup.
  }
}
