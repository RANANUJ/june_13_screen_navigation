import 'package:flutter/material.dart';
import 'package:june_13_screen_navigation/june_13_screen_navigation.dart';
import 'package:june_13_screen_navigation/second_screen.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: June13ScreenNavigtion(),
    );
  }
}
