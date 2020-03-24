import 'dart:math';

class calcbring {
  calcbring({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'over weight';
    } else if (_bmi <= 18.5) {
      return 'less weight';
    } else {
      return 'normal';
    }
  }

  getInterpretatiom() {
    if (_bmi >= 25) {
      return 'you have a haigher than normal body weight. Try to excersise more';
    } else if (_bmi <= 18.5) {
      return 'you have a normal body weight. good jop';
    } else {
      return 'you have a lower than normal body weight.  you can eat a bit more';
    }
  }
}
