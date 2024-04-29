import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creeper From Minecraft',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Creeper From Minecraft'),
        ),
        body: const Center(
          child: GrayCont(),
        ),
      ),
    );
  }
}

class GrayCont extends StatelessWidget {
  const GrayCont({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 400,
        height: 400,
        color: Colors.grey,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Head(),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Creeper - моб из игры Minecraft.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.purple[100],
        ),
        Positioned(
          top: 45,
          left: 35,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.purple,
          ),
        ),
        Positioned(
          top: 45,
          right: 35,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.purple,
          ),
        ),
        Positioned(
          bottom: 40,
          child: Container(
            width: 70,
            height: 25,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
