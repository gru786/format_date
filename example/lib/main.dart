import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:format_date/format_date.dart';

void main() {
  DateTime currentDateTime = DateTime.now();

  ///date formatting function
  ///-> expects one required parameter i.e datetime (DateTime)
  ///-> and expects one optional parameter i.e format (String) | default value = "dd-mm-yyyy"
  ///will return 'Invalid format', if the given format is invalid.
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd-mm-yy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd/mm/yy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "mm-dd-yyyy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "mm/dd/yyyy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd-mm"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd-mm-yyyy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd/mm"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd/mm/yy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "dd"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "mm"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "yy"),
  );
  log(
    FormatDate.formatDate(dateTime: currentDateTime, format: "yyyy"),
  );

  ///time formatting function
  ///-> expects one required parameter i.e datetime (DateTime)
  ///-> and expects one optional parameter i.e format (String) | default value = "hh:mm:ss"
  ///will return 'Invalid format', if the given format is invalid.
  log(
    FormatDate.formatTime(dateTime: currentDateTime, format: "hh:mm:ss"),
  );
  log(
    FormatDate.formatTime(dateTime: currentDateTime, format: "hh:mm"),
  );
  log(
    FormatDate.formatTime(dateTime: currentDateTime, format: "hh"),
  );
  log(
    FormatDate.formatTime(dateTime: currentDateTime, format: "hh:mm:ss.ms"),
  );
}
