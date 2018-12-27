import 'package:flutter/material.dart';
import './demo/ListView_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigator_bar_demo.dart';
import './demo/hello_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/register_demo.dart';
import './demo/material_components.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override //重写StatelessWidget中Widget

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown[700],
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //点击高亮
        splashColor: Colors.orange, //点击波纹颜色
        accentColor: Colors.pink,//避免覆盖所有设置
      ),
      // home: NavigatorDemo(),
      initialRoute: '/', //初始显示路由
      routes: {
        '/': (context) => NavigatorDemo(),
        '/home': (context) => Home(),
        '/about': (context) => Page(title: 'About',),
        '/register':(context)=>RegisterDemo(),
        '/mdc':(context)=>MaterialComponents(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('wiTness'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.orange,
              ),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed!'),
            )
          ],
          elevation: 10.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.local_airport),
              ),
              Tab(
                icon: Icon(Icons.local_dining),
              ),
              Tab(
                icon: Icon(Icons.local_atm),
              ),
              Tab(
                icon: Icon(Icons.slideshow),
              )
            ],
          ),
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(), //溅墨效果
            BasicDemo(), //Text RichText Column Row DecorationBox
            // Icon(Icons.local_dining,size: 128.0,color:Colors.black12),
            LayoutDemo(),
            ViewDemo(),
            SliverDemo(), //sliver
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
