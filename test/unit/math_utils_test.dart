import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/utils/math_utils.dart';

void main() {
  test('sumar() debe retornar 5 cuando 2 + 3', () {
    final result = addUp(2, 3);
    expect(result, 5);
  });
}
