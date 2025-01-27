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
          ListTile(
            leading: Icon(Icons.person),
            title: Text('OwO', style: TextStyle(fontSize: 20),),
            subtitle: Text('Hello'),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white60,
          ),
          ListTile(
            leading: Icon(Icons.person_2),
            title: Text('OwO', style: TextStyle(fontSize: 20),),
            subtitle: Text('Hello'),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white60,
          ),
          ListTile(
            leading: Icon(Icons.person_3),
            title: Text('OwO', style: TextStyle(fontSize: 20),),
            subtitle: Text('Hello'),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white60,
          ),
        ],
      )
    );
  }
}
