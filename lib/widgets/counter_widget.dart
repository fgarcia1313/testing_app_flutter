import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int value = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$value'),
        ElevatedButton(
          onPressed: () {
            setState(() => value++);
          },
          child: const Text(key: ValueKey('Incrementar'), 'Incrementar'),
        ),
      ],
    );
  }
}
