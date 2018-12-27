import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxvalueA = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                accentColor: Colors.purple,
              ),
              child: CheckboxListTile(//CheckboxListTile参考
                value: _checkboxvalueA,
                onChanged: (value) {
                  setState(() {
                    _checkboxvalueA = value;
                  });
                },
                title: Text('Checkbox Item A'),
                subtitle: Text('Description'),
                secondary: Image.network(
                  'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
                  width: 58.0,
                ),
                selected: _checkboxvalueA, //小图标是否激活
                // activeColor: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxvalueA, //true or false
                  onChanged: (value) {
                    setState(() {
                      _checkboxvalueA = value;
                    });
                  },
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
