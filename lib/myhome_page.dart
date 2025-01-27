import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide'),
      ),
      body: ListView(
        children: [
          Text('Water Filter1',style: TextStyle(fontSize: 20),),
          Text('Water Filter2',style: TextStyle(fontSize: 20),),
          Text('Water Filter3',style: TextStyle(fontSize: 20),),
        ],
      )
    );
  }
}
