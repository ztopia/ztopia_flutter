import 'package:flutter/material.dart';
import './../model/post.dart';

class DataTableDemo extends StatefulWidget {
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending, //false降序
              // onSelectAll: (bool value){
              //   value=true;
              // },//定制全选动作 value是全选的状态
              columns: [
                DataColumn(
                  label: Container(
                    width: 60.0,
                    child: Text('Title'),
                  ),
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;

                      // 排序
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }

                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text('Author'),
                ),
                DataColumn(
                  label: Text('Image'),
                ),
              ],
              // rows: [
              //   //content
              //   DataRow(cells: [
              //     DataCell(Text('hello')),
              //     DataCell(Text('ztopia')),
              //   ]),

              // ],
              rows: posts.map((post) {
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },//复选框
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
