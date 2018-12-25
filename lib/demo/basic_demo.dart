import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //Column
      children: <Widget>[
        TextDemo(),
        RichTextDemo(),
        Container(
          //Container  默认填充可用区域，需要设置大小，将Container放入Column or Row
          color: Color.fromRGBO(16, 18, 66, 0.6),
          height: 200.0,
          width: 200.0,
          padding: EdgeInsets.only(left: 34.0, right: 34.0),
          margin: EdgeInsets.all(8.0),

          child: Row(
            //Row
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Container(
                child: Icon(
                  Icons.airline_seat_flat_angled,
                  size: 36.0,
                  color: Colors.black38,
                ),
                decoration: BoxDecoration(
                    //装饰盒子
                    color: Color.fromRGBO(26, 25, 8, 0.4),
                    // border: Border(
                    //   top:BorderSide(
                    //     color: Colors.orangeAccent,
                    //     width: 3.0,
                    //     style: BorderStyle.solid
                    //   )
                    // ),
                    border: Border.all(
                        color: Colors.orangeAccent,
                        width: 3.0,
                        style: BorderStyle.solid),
                    // borderRadius: BorderRadius.circular(13.0)
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 18.0,
  );

  final String _author = 'ztopia';
  final String _title = 'SuperMan';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        'basic demo $_author,$_title!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!',
        textAlign: TextAlign.center,
        style: _textStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'ztopia',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 16.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w200,
        ),
        children: [
          TextSpan(
            text: 'wiTness',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
