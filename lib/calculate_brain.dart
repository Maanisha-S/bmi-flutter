import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'Overwieght';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'UnderWight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your have higher than normal weight';
    } else if (_bmi > 18) {
      return 'Your have higher normal weight,Good job!';
    } else {
      return 'Your BMI result is quite low,you should eat more';
    }
  }
}
