import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app_flutter/widgets/counter_widget.dart';

void main() {
  testWidgets('El contador inicia en 0 y aumenta al presionar', (tester) async {
    // Arrange: Montar el widget
    await tester.pumpWidget(const MaterialApp(home: CounterWidget())); ///renderiza el widget

    // Assert: Verificar el texto inicial
    //expect(find.text('0'), findsOneWidget);
    //expect(find.text('1'), findsOneWidget);
    //expect(find.text('2'), findsNothing);
    expect(find.text('2'), findsOneWidget);

    // Act: Tap en el botón
    await tester.tap(find.text('Incrementar'));
    await tester.tap(find.byKey(ValueKey('Incrementar'))); ///simula la pulsación
    await tester.pump(); ///refresca el árbol de widgets

    // Assert: Debe mostrar "1"
    expect(find.text('4'), findsOneWidget);
  });
}
