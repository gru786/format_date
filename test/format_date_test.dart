import 'package:flutter_test/flutter_test.dart';

import 'package:format_date/format_date.dart';

void main() {
  final DateTime dateTime = DateTime.parse("2023-12-27 15:52:04.570");
  test('format date testing', () {
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd-mm-yyyy"),
        "27-12-2023");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd/mm/yyyy"),
        "27/12/2023");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd-mm"), "27-12");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd/mm"), "27/12");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "ddmm"), "2712");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd"), "27");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "mm"), "12");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "yy"), "23");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "yyyy"), "2023");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd-mm-yy"),
        "27-12-23");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "dd/mm/yy"),
        "27/12/23");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "mm-dd-yyyy"),
        "12-27-2023");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "mm/dd/yyyy"),
        "12/27/2023");
    expect(FormatDate.formatDate(dateTime: dateTime, format: "mdy"),
        "Invalid Format");
  });

  test('format time testing', () {
    expect(FormatDate.formatTime(dateTime: dateTime, format: "hh-mm-ss"),
        "15-52-04");
    expect(FormatDate.formatTime(dateTime: dateTime, format: "hh:mm:ss"),
        "15:52:04");
    expect(FormatDate.formatTime(dateTime: dateTime, format: "hh:mm"), "15:52");
    expect(FormatDate.formatTime(dateTime: dateTime, format: "hh"), "15");
    expect(FormatDate.formatTime(dateTime: dateTime, format: "mm"), "52");
  });
}
