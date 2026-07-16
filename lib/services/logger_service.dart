import 'package:logger/logger.dart';

/// A centralized logging service for the application.
class LoggerService {
  LoggerService._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  /// Log a message at the debug level.
  static void d(String message) => _logger.d(message);

  /// Log a message at the error level.
  static void e(String message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace);

  /// Log a message at the info level.
  static void i(String message) => _logger.i(message);

  /// Log a message at the warning level.
  static void w(String message) => _logger.w(message);
}
