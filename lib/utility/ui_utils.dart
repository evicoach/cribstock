import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

double scaledFontSize(double fontSize, BuildContext context) {
  double scaleFactor = MediaQuery.of(context).textScaleFactor;
  print("Scale factor is $scaleFactor");
  if (scaleFactor > 1.1) {
    scaleFactor = 1.1;
    print("Updated Scale factor is $scaleFactor");
    return fontSize * scaleFactor;
  }
  return fontSize * scaleFactor;
}

numberFormatter(String input) =>
    NumberFormat('#,###.##').format(num.parse(input));
