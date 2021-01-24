import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_droid/utils.dart';

class App extends StatelessWidget {
  static const String APP_NAME = 'Yusupov-droid';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: PrimaryColor,
        body: Center(
          child: Text(
            'Hello , I\'m Yusupov-Droid.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        floatingActionButton: FlatButton(
          minWidth: 120,
          height: 50,
          shape: Border.all(
            color: Colors.white,
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onPressed: () async {
            return AlertDialog(
              title: Text('AlertDialog Title'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to approve of this message?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Approve'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
