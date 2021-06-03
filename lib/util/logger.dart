import 'package:simple_logger/simple_logger.dart';

final isDeveloper = String.fromEnvironment('FLAVOR') == 'development';

final SimpleLogger logger = SimpleLogger()
  ..setLevel(
    Level.FINEST,
    includeCallerInfo: isDeveloper,
  );