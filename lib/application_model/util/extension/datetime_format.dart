extension DateTimeFormatFromModel on DateTime {
  DateTime get inputDateTime => DateTime(this.year,this.month,this.day);
}