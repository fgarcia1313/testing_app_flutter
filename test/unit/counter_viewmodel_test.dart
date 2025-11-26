import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/viewmodels/counter_viewmodel.dart';

void main() {
  test('increment() debe aumentar el valor', () {
    final vm = CounterViewModel();

    vm.increment();

    expect(vm.value, 1);
  });
}
