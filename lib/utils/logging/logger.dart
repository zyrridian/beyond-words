import 'package:logger/logger.dart';

class TLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize the log levels based on your needs
    level: Level.debug
  );

  static void debug(String messages) {
    _logger.d(messages);
  }

  static void info(String messages) {
    _logger.i(messages);
  }

  static void warning(String messages) {
    _logger.w(messages);
  }

  static void error(String messages, [dynamic error]) {
    _logger.e(messages, error: error, stackTrace: StackTrace.current);
  }
}