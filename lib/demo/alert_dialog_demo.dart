import 'package:flutter/material.dart';
import 'dart:async';

enum Action { OK, Cancel }

class AlertDialogDemo extends StatefulWidget {
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';
  Future _openAlertDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false, //强制用户选择一个动作

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context, Action.OK);
                },
              )
            ],
          );
        });

    switch (action) {
      case Action.OK:
        setState(() {
          _choice = 'OK';
        });
        break;

      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Your choice is :$_choice'),
                RaisedButton(
                  child: Text('Open Alert Dialog'),
                  onPressed: _openAlertDialog,
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
