import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool started = false;
  final StreamController<int> _streamController =
      StreamController<int>.broadcast();

  void _startStreamCounter() {
    setState(() => started = true);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _counter++;
      _streamController.add(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: started
          ? _createStream()
          : _menu(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _menu() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: _startStreamCounter,
            child: const Text('Iniciar stream'),
          ),
        ],
      ),
    );
  }

  _createStream() {
    return StreamBuilder(
      stream: _streamController.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(child: Text('Contador: ${snapshot.data}'));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
