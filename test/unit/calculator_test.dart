import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/services/calculator.dart';

void main() {
  test('multiply() debe retornar 6', () {
    final calc = Calculator();

    final result = calc.multiply(2, 3);

    expect(result, equals(6));
  });
}
