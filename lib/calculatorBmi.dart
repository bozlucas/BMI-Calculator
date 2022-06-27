import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBmi {
  CalculatorBmi({@required this.weight, @required this.height});
  final int height;
  final int weight;
  double _bmi;

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String resultText() {
    if (_bmi >= 25) {
      return 'Your weight is higher than normal.';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal.';
    } else {
      return 'Your weight is less than normal';
    }
  }
}
