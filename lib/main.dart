import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:xylophone/widgets.dart';

void main() {
  runApp( const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
          children: [
              XylophoneTab(Colors.red, 1),
            const SizedBox(height: 5),
              XylophoneTab(Colors.yellowAccent, 2),
            const SizedBox(height: 5),
              XylophoneTab(Colors.greenAccent, 3),
            const SizedBox(height: 5),
              XylophoneTab(Colors.blueAccent, 4),
            const SizedBox(height: 5),
              XylophoneTab(Colors.purple, 5 ),
            const SizedBox(height: 5),
            XylophoneTab(Colors.orangeAccent, 6),
            const SizedBox(height: 5),
            XylophoneTab(Colors.pinkAccent, 7),
          ],
        ),
            ),
        ),
      ),
    );
  }
}
