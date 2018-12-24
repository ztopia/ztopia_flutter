import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override

  State<StatefulWidget> createState() {
      // TODO: implement createState
      return _BottomNavigatorBarDemoState();
    }
}


class _BottomNavigatorBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('Expolre')),
        BottomNavigationBarItem(icon: Icon(Icons.toys), title: Text('Toys')),
        BottomNavigationBarItem(
            icon: Icon(Icons.update), title: Text('Updates')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('My'))
      ],
    );
  }
}
