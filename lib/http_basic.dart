import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpBasic extends StatefulWidget {
  const HttpBasic({super.key});

  @override
  State<HttpBasic> createState() => _HttpBasicState();
}

class _HttpBasicState extends State<HttpBasic> {
  Future<String> fetchData() async{
    final response =
      await http.get(Uri.parse('https://itpart.net/mobile/api/product1.php'));
    if (response.statusCode == 200){
      final jSONbody = jsonDecode(utf8.decode(response.bodyBytes));
      String strBody = response.body.toString();
      debugPrint('${strBody}');
      return strBody;
    }else{
      throw Exception('problem..');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Http'),
    ),
    body: Center(
      child: FutureBuilder(
        future: fetchData(),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else if (snapshot.hasData) {
          return Text('${snapshot.data}',
          style: TextStyle(fontSize: 20));
          } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
          }
          return const Text('No data available');
          }),
        )
);
}
}
