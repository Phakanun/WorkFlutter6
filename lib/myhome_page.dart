import 'package:flutter/material.dart';
import 'package:flutter_app2/welcome_page.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  /*final List<String> products = <String>[
    'AAA',
    'BBB',
    'CCC',
    'DDD',
    'EEE'
  ];*/
  Future<String> fetchData() async{
    await Future.delayed(const Duration(seconds: 3));
    return "Hello, FutureBuilder";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide'),
      ),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context,snapshot){
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }),
      )
      /*body: ListView.separated(
          itemCount: products.length,
          itemBuilder: (context,index) => ListTile(
              title: Text(
                products[index],
                style: TextStyle(fontSize: 20),
              )
          ),
          separatorBuilder: (context, int index) => const Divider()
      ),*/
      /*ListTile(
        leading: Icon(Icons.person),
        title: Text('OwO', style: TextStyle(fontSize: 20),),
        subtitle: Text('Hello'),
        trailing: Icon(Icons.arrow_forward_ios),
        tileColor: Color.fromARGB(60, 127, 62, 152),
        onTap: ()=> Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        ),
      ),*/
    );
  }
}