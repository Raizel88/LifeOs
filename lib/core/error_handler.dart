import 'package:flutter/material.dart';
import '../services/logger_service.dart';

/// A global error handler to capture and log application errors.
class GlobalErrorHandler {
  GlobalErrorHandler._();

  /// Initializes error hooks for both Flutter and the UI.
  static void initialize() {
    // Capture Flutter framework errors
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      LoggerService.e('Flutter Framework Error', details.exception, details.stack);
    };

    // UI Error builder for production-like error screens
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'An unexpected error occurred.\n${details.exception}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      );
    };
  }
}
