import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime selectedDate = DateTime.now();

Future<String> selectDate(BuildContext context) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2015),
    lastDate: DateTime(2022),
  );
  if (picked != null) {
    return (DateFormat('yyyy/MM/dd').format(picked));
  } else {
    return null;
  }
}
