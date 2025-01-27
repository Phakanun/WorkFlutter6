import 'package:flutter/material.dart';
import 'package:flutter_app2/cal.dart';
import 'package:flutter_app2/display_page.dart';
import 'package:flutter_app2/display_page2.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final TextEditingController Name = TextEditingController();
  final TextEditingController Age = TextEditingController();
  String Name1 = '';

  @override
  void dispose(){
    Name.dispose();
    Age.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        leading: IconButton(
          onPressed: () {
            debugPrint('Leading icon pressed');
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello $Name1',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Age,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Age',
                      hintText: 'Age',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Name1 = Name.text;

                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String? input = Name.text;
                int? inputAge = int.parse(Age.text);
                debugPrint('Input: $inputAge');
                Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayPage(
                  name: input,
                  age: inputAge,
                ),
                ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Display',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String? input = Name.text;
                int? inputAge = int.parse(Age.text);
                debugPrint('Input: $inputAge');
                Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayPage2(
                  name: input,
                  age: inputAge,
                ),
                ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Display2',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cal');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Calculate Page',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
