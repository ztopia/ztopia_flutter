import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tag = ['apple', 'pear', 'leomon'];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'leomon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 52.0,
              runSpacing: 22.0,
              children: <Widget>[
                Text('Wrap ,横排超出换行'),
                Chip(
                  label: Text('Power'),
                  backgroundColor: Colors.orangeAccent,
                ),
                Chip(
                  label: Text('Power'),
                  avatar: CircleAvatar(
                    child: Text('Z'),
                    // backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        'https://resources.ninghao.net/images/wanghao.jpg'),
                  ),
                  backgroundColor: Colors.orangeAccent,
                ),
                Chip(
                  label: Text('Delete'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this Chip',
                ),
                //-------------------------------------------------Chip
                Divider(
                  color: Colors.brown,
                  height: 10.0,
                  indent: 55.0,
                ),
                Wrap(
                  spacing: 20.0,
                  children: _tag.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tag.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                //-------------------------------------------------ActionChip
                Divider(
                  color: Colors.brown,
                  height: 10.0,
                  indent: 55.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip:$_action'),
                ),
                Wrap(
                  spacing: 20.0,
                  children: _tag.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                //-------------------------------------------------FliterChip
                Divider(
                  color: Colors.brown,
                  height: 10.0,
                  indent: 55.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FliterChip:${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 20.0,
                  children: _tag.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                //---------------------------------ChoiceChip
                Divider(
                  color: Colors.brown,
                  height: 10.0,
                  indent: 55.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip:${_choice.toString()}'),
                ),
                Wrap(
                  spacing: 20.0,
                  children: _tag.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.deepOrange,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tag = ['apple', 'pear', 'leomon'];
          });

          _selected = [];
          _choice = 'leomon';
        },
      ),
    );
  }
}
