import 'package:firebase_crashlytics_1/presentation/screens/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => SecondPage())),
          ),
          child: const Text("Throw Test Exception"),
        ),
      ),
    );
  }
}
