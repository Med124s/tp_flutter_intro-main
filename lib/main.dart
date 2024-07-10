import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage ({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}


class MyHomePageState extends State<MyHomePage> {
  String _text = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TP flutter'),
      ),
      body: Center(
        child: Text(_text),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _text = 'Button clicked';
        });
      },child: const Icon(Icons.add)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  const Text('TP flutter'),
                  ConstrainedBox(constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),child: const Image(image: NetworkImage('https://avatars.githubusercontent.com/u/79090195',headers: {"user-agent":"Mozilla/5.0 (Linux; Android 13; SM-S901B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36"}),),)
                ],
              ),
            ),
            ListTile(
              title: const Text('Java'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Flutter'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )
    );
  }
}

