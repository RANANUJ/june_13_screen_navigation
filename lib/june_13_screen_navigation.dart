import 'package:flutter/material.dart';

import 'second_screen.dart';

class June13ScreenNavigtion extends StatefulWidget {
  const June13ScreenNavigtion({super.key});

  @override
  State<June13ScreenNavigtion> createState() => _June13ScreenNavigation();
}

class _June13ScreenNavigation extends State<June13ScreenNavigtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Navigation"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen()));
              },
              child: const Text("Navigate to second screen"))
        ],
      ),
    );
  }
}