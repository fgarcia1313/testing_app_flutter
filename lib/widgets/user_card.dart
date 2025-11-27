import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;

  const UserCard({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('$name !!!', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text(email),
          ],
        ),
      ),
    );
  }
}
