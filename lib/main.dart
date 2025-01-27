import 'package:flutter/material.dart';
import 'package:flutter_app2/cal.dart';
import 'package:flutter_app2/myhome_page.dart';
import 'package:flutter_app2/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 127, 62, 152),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 127, 62, 152),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/cal': (context) => Cal(),
        '/homepage': (context) => MyhomePage(),
      },
      //home: const WelcomePage(),
    );
  }
}
