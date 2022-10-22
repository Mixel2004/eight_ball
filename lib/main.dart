import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: const Ball(),
        ),
      ),
    );

int getNum() {
  return (Random().nextInt(5) + 1);
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              ballNum = getNum();
              if (kDebugMode) {
                print(ballNum);
              }
            },
          );
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
