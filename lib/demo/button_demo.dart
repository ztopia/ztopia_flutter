import 'package:flutter/material.dart';

class ButtonShowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Flatbutton
    final flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    //RaisedButton
    final raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: ThemeData(
              buttonColor: Colors.purple,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  // shape: BeveledRectangleBorder(//矩形
                  //   borderRadius: BorderRadius.circular(6.0),
                  // ),
                  shape: StadiumBorder())),
          child: RaisedButton.icon(
            //RaisedButton
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textTheme: ButtonTextTheme.primary,
            // color: Theme.of(context).accentColor,
            elevation: 3.0,
          ),
        )
      ],
    );

    //OulineButton
    final outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.black,
          highlightedBorderColor: Colors.grey,
          textTheme: ButtonTextTheme.primary,
        ),
        Theme(
          data: ThemeData(
              buttonColor: Colors.purple,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  // shape: BeveledRectangleBorder(//矩形
                  //   borderRadius: BorderRadius.circular(6.0),
                  // ),
                  shape: StadiumBorder())),
          child: OutlineButton.icon(
            //RaisedButton
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            textTheme: ButtonTextTheme.primary,
            // color: Theme.of(context).accentColor,
          ),
        )
      ],
    );

    //FiexedWidthButton
    final fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    //expandedButton
    final expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 25.0),
        Expanded(
          flex: 2, //占用2
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    //buttonBarDemo
    final buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 0.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100],
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                textTheme: ButtonTextTheme.primary,
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100],
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                textTheme: ButtonTextTheme.primary,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo, //FlatButton 参考
            raisedButtonDemo, //RaisedButton参考
            outlineButtonDemo, //OutlineButton参考
            fixedWidthButtonDemo, // 设置宽度的按钮参考
            expandedButtonDemo, //占用可用空间的按钮
            buttonBarDemo, //一组带边距的横排显示按钮,两个按钮中间的距离
          ],
        ),
      ),
    );
  }
}
