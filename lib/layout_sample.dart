import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text('Row One'),
        Text('Row Two'),
        Text('Row Three'),
        Text('Row four'),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3209370120,2008812818&fm=26&gp=0.jpg'),
        )
      ],
    );
  }
}

class ScrollViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            print("Click");
          },
          child: Text('click me please!'),
        ),
        GestureDetector(
            child: Text('click me too'),
            onTap: () {
              print("点我点我");
            },
            onTapDown: (details){
              print(details.globalPosition);
            },
            onVerticalDragUpdate: (details) {
              print(details.localPosition);
            },),
        Text('Row One'),
        Text('Row Two'),
        Text('Row Four'),
        Text('Row One'),
        Text('Row Two'),
        Text('Row Four'),
        Text('Row One'),
      ],
    );
  }
}

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: ScrollViewSample(),
        ),
      ),
    ));
