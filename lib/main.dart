import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('31/05/2023   Mustafa Cuma'),
          backgroundColor: Colors.grey[400],
        ),
        body: const imagepage(),
      ),
    ),
  );
}

// ignore: camel_case_types
class imagepage extends StatefulWidget {
  const imagepage({super.key});

  @override
  State<imagepage> createState() => _imagepageState();
}

// ignore: camel_case_types
class _imagepageState extends State<imagepage> {
  @override
  Widget build(BuildContext context) {
    int lcounter;
    int rcounter;
    rcounter = Random().nextInt(11) + 1;
    lcounter = Random().nextInt(11) + 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          rcounter == lcounter ? ' Nice you win ' : ' try again ',
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rcounter = Random().nextInt(11) + 1;
                      lcounter = Random().nextInt(11) + 1;
                    });
                  },
                  child: Image.asset('images/$lcounter.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      //  rcounter = Random().nextInt(11) + 1;
                      //  lcounter = Random().nextInt(11) + 1;
                    });
                  },
                  child: Image.asset('images/$rcounter.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
