import 'package:flutter/material.dart';

class App extends StatelessWidget {
  static const String APP_NAME = 'Yusupov-droid';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      home: Scaffold(
        body: Center(
          child: Text('Hello , I\'m Yusupov-Droid.'),
        ),
      ),
    );
  }
}
