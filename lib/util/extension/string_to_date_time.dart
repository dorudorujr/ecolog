extension StringToDateTime on String {
  DateTime toDateTime() {
    return DateTime.parse(this).toLocal();
  }
}