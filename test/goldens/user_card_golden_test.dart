import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/widgets/user_card.dart';

void main() {
  testWidgets('UserCard matches golden', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserCard(
              name: 'Fernando García',
              email: 'fer@mail.com',
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(UserCard),
      matchesGoldenFile('user/user_card.png'),
    );
  });
}
