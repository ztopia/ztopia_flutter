import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black26,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0),
      // ),
    );

    //带文字的漂浮按钮
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      elevation: 0.0,
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('floatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //按钮漂浮位置
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(), //凹下去
      ),
    );
  }
}
