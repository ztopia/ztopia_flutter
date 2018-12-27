import 'package:flutter/material.dart';

import './../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${post.title}'),
          elevation: 0.0,
        ),
        // Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: <Widget>[
        //         Padding(
        //             padding: EdgeInsets.only(left: 8.0, right: 20.0), child: Icon(Icons.account_balance),),
        //             Expanded(//解决Row overflow错误
        //                 child: Text(
        //                   'Main Cotent. This is a demo to show how to avoid overflow in a Row widget'),
        //             ),
        //           ],
        // )

        body: SingleChildScrollView(
          //防止Column overflow错误
          child: Column(
            children: <Widget>[
              Image.network(post.imageUrl),
              Container(
                padding: EdgeInsets.all(32.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${post.title}',
                        style: Theme.of(context).textTheme.title),
                    Text('${post.author}',
                        style: Theme.of(context).textTheme.subhead),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text('${post.description}',
                        style: Theme.of(context).textTheme.body1),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
