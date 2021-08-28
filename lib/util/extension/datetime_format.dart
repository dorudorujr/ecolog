import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension DateTimeFormat on DateTime {
  String toInputDateText() {
    initializeDateFormatting('ja');
    return DateFormat.yMMMMEEEEd('ja').format(this).toString();
  }
}