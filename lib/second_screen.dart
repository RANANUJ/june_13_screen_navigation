import 'package:flutter/material.dart';
import 'package:june_13_screen_navigation/third_screen.dart';

class SecondScreen extends StatefulWidget {
  final String text;
  const SecondScreen({super.key, required this.text});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text("Value passed from first ${widget.text}"),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ThirdScreen()));
              },
              child: Text("Move to third")),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                    (Route<dynamic> route) => false);
              },
              child: Text("Push and remove until"))
        ],
      ),
    );
  }
}
