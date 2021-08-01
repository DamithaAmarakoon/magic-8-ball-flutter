import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = getRandomBallNumber();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset('assets/images/ball$ballNumber.png'),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              ballNumber = getRandomBallNumber();
            });
          },
          child: Text('Ask'),
          backgroundColor: Colors.blueGrey[700],
        )
      ],
    );
  }
}

int getRandomBallNumber() {
  return Random().nextInt(5) + 1;
}
