
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyAppHome(),
  routes: <String, WidgetBuilder> {
    '/a': (BuildContext context) => MyPage(title: 'Page A'),
    '/b': (BuildContext context) => MyPage(title: 'Page B'),
    '/c': (BuildContext context) => MyPage(title: 'Page C'),
  },
));

class MyPage extends StatelessWidget {
  final String title;
  MyPage({Key key, this.title });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.of(context).pop({"lat": 43.8888, "long": -79.9999});
        },child: Text("给上一个界面返回Map数据"),),
      ),
    );
  }

}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航"),
      ),
      body: Center(
        child: ListView(children: <Widget>[]
          ..add(GestureDetector(onTap: () async {
//            Map coordinates = await Navigator.push(context, MaterialPageRoute(
//              builder: (BuildContext context) {
//                return MyPage(title: 'Page B');
//              }
//            ));
            var coordinates = await Navigator.of(context).pushNamed('/b');
            print(coordinates);
          }, child: Text("路由一"),))
          ..add(GestureDetector(onTap: () {
            Navigator.of(context).pushNamed('/c');
          }, child: Text("路由二"),))
          ,),
      ),
    );
  }

}