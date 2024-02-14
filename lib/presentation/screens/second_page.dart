import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            try {
              throw FormatException("Example error");
            } catch (error, stackTrace) {
              _recordErrorToCrashlytics(error, stackTrace);
            }
          },
          child: Text("Format Exception"),
        ),
      ),
    );
  }

  Future<void> _recordErrorToCrashlytics(
      dynamic error, StackTrace? stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
}
