import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Stack Widget'),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.pink.shade900,
        child: Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink.shade800,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.pink.shade500,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 150,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink.shade200,
                  ),
                )
              ],
            ),
      )
    );
  }
}
