import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0; //单选按钮组的值
  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value; //单选按钮的值和群组的值一样
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Radio Group $_radioGroupA'),
            SizedBox(
              height: 50.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.clear),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.clear),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
