import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatioDemo();
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          //容器的宽高比
          aspectRatio: 16.0 / 9.0,
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
        ),

        ConstrainedBox(
          //带限制的Box
          constraints: BoxConstraints(
            maxHeight: 200.0,//....
            maxWidth: 200.0,
          ),
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
        )
      ],
    );
  }
}

class Smile extends StatelessWidget {
  //相对布局
  @override
  Widget build(BuildContext context) {
    return Stack(
      // 1搓小部件
      alignment: Alignment(0.0, 0.0), //没有设置对齐的子部件的对齐
      children: <Widget>[
        SizedBox(
          //Stack中最大的作为地板
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(-0.8, -0.8),
            child: Icon(
              Icons.mood,
              color: Colors.cyanAccent,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 0.9),
            ),
          ),
        ),
        SizedBox(
          child: Container(
            width: 50.0,
            height: 50.0,
            child: Icon(
              Icons.mood_bad,
              color: Colors.lime,
            ),
            decoration: BoxDecoration(
              // color: Color.fromRGBO(3,54, 255,0.9),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 222, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Icon(
            Icons.mood_bad,
            color: Colors.lime,
          ),
          top: 20.0,
          left: 30.0,
        ),
      ],
    );
  }
}

class Flex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //把剩下的空间平均分配
        crossAxisAlignment: CrossAxisAlignment.center, //stretch拉伸对齐

        children: <Widget>[
          IconBadge(
            Icons.mood,
            size: 66.0,
          ),
          SizedBox(
            height: 22.0,
          ),
          SizedBox(
            //可固定宽高,可以作为间距控制
            width: 50.0,
            height: 50.0,

            child: Container(
              alignment: Alignment(1.0, 1.0), //对齐方式
              child: Icon(Icons.beenhere),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 0.9),
    );
  }
}
