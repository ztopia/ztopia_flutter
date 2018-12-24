import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        // DrawerHeader(
        //   child:Text('header'.toUpperCase()),
        //   decoration:BoxDecoration()
        // ),
        UserAccountsDrawerHeader(
          accountName: Text('wiTness',
              style: TextStyle(fontSize: 18.0, color: Colors.black)),
          accountEmail: Text('ztopia666@gmail.com',
              style: TextStyle(fontSize: 15.0, color: Colors.black)),
          currentAccountPicture: CircleAvatar(
            child: Image.asset('images/avator.jpg'),
          ),
          decoration: BoxDecoration(
            color: Colors.brown[300],
            image: DecorationImage(
                image: NetworkImage(
                    'https://resources.ninghao.org/images/free_hugs.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.brown[100].withOpacity(0.7), BlendMode.hardLight)),
          ),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.brown[600], size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.brown[600], size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.brown[600], size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
      ]),
    );
  }
}
