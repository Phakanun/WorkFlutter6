import 'package:flutter/material.dart';

class DisplayPage2 extends StatefulWidget {
  final String? name;
  final int? age;
  const DisplayPage2({super.key, this.name, this.age});

  @override
  State<DisplayPage2> createState() => _DisplayPage2State();
}

class _DisplayPage2State extends State<DisplayPage2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Display Stful'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello ${widget.name} Age: ${widget.age}',
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

