import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Option A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemA?Icons.clear:Icons.face),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA ? 'True' : 'False',
                    style: TextStyle(fontSize: 32.0)),
                Switch(
                  value: _switchItemA,
                  onChanged: (value) {
                    setState(() {
                      _switchItemA = value;
                    });
                  },
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
