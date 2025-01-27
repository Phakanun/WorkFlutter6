import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String? name;
  final int? age;
  const DisplayPage({super.key, this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayStless'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello ${name ?? 'None'} Age: ${age ?? '-'}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
