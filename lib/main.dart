// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ScoreApp",
      home: ScoreHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increase() {
    setState(() {
      number++;
    });
  }

  void decrease() {
    setState(() {
      number--;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score app'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore_outlined),
          onPressed: () {
            reset();
          }),

      // ignore: prefer_const_constructors
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: Text(
            'Score Is',
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.green, fontSize: 60, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        // ElevatedButton(onPressed: onPressed, child: child),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                increase();
              },
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text('Increase',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            InkWell(
              onTap: decrease,
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text('Decreaced',
                        style: TextStyle(color: Colors.white))),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
