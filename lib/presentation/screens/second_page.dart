import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => throw FormatException("Format Exception Example"),
          child: Text("Format Exception"),
        ),
      ),
    );
  }
}
