import 'package:flutter/material.dart';

import './button_demo.dart';
import './floating_action_button.dart';
// import './widget_demo.dart';
import './popup_menu_button_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MaterialComponents')),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonShowDemo(),
          ),
          ListItem(
            title: 'PopupMenuButtonDemo',
            page: PopupMenuButtonDemo(),
          ),
          // ListItem(
          //   title: 'WidgetDemo',
          //   page: WidgetDemo(),
          // )
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
