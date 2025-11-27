import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/main.dart';

void main() {
  testWidgets('UserCard matches golden', (tester) async {
    await tester.pumpWidget(MyApp());

    await expectLater(
      find.byType(MyHomePage),
      matchesGoldenFile('main/home_page.png'),
    );
  });
}
