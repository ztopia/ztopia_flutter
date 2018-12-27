import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            FlatButton(
              child: Text('About'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context)=>Page(title:'About')
                //   )
                // );
                Navigator.pushNamed(context, '/about'); //两种方式
              },
            ),
            FlatButton(
              child: Text('register'),
              onPressed: () {
                Navigator.pushNamed(context, '/register'); //两种方式
              },
            ),
            FlatButton(
              child: Text('Material Components'),
              onPressed: () {
                Navigator.pushNamed(context, '/mdc'); //两种方式
              },
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

//自定义代码片段10 - 3
