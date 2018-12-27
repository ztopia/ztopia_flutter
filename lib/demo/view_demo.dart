import 'package:flutter/material.dart';
import './../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true, //是否回弹
      reverse: false, //是否倒叙
      scrollDirection: Axis.vertical, //垂直滚动
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'), //翻页触发
      controller: PageController(
        initialPage: 0, //初始显示页面
        keepPage: true, //是否保存页面滚动位置
        viewportFraction: 1.0, //占用页面可视口
      ),

      children: <Widget>[
        Container(
          child: Text('ONE', style: TextStyle(color: Colors.blue)),
          alignment: Alignment(0.0, 0.0), //对齐方式
          color: Colors.yellowAccent,
        ),
        Container(
          child: Text('TWO', style: TextStyle(color: Colors.blue)),
          alignment: Alignment(0.0, 0.0), //对齐方式
          color: Colors.brown,
        ),
        Container(
          child: Text('THERE', style: TextStyle(color: Colors.blue)),
          alignment: Alignment(0.0, 0.0), //对齐方式
          color: Colors.pink,
        ),
        Container(
          child: Text('FOUR', style: TextStyle(color: Colors.blue)),
          alignment: Alignment(0.0, 0.0), //对齐方式
          color: Colors.blueGrey,
        )
      ],
    );
  }
}

class Swiper extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          //SizedBox沾满所有有用空间
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

//按每行个数
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.orange[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, //每行3个
      crossAxisSpacing: 18.0,
      mainAxisSpacing: 18.0,
      scrollDirection: Axis.horizontal,

      children: _buildTiles(100),
    );
  }
}

//按每个网格的宽度
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.orange[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100.0,
      crossAxisSpacing: 18.0,
      mainAxisSpacing: 18.0,
      // scrollDirection: Axis.horizontal,

      children: _buildTiles(100),
    );
  }
}

//按需生成网格视图
class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context,int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit:BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//同理count和extent
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}