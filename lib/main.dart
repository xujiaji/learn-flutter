import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.yellow,
      ),
      home: SampleAppPage()
    );
  }
}

class SampleAppPage extends StatefulWidget {

  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();

}

class _SampleAppPageState extends State<SampleAppPage> {

  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text("Toggle One");
    } else {
      return MaterialButton(onPressed: (){}, child: Text("Toggle Two"),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("练手App"),
      ),
      body: Center(
        child: Image.asset("images/cute.png"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: "更新文本j",
        child: Icon(Icons.update),
      ),
    );
  }

}

//class _SampleAppPageState extends State<SampleAppPage> {
//
//  // 默认占位文字
//  String textToShow = "I Like Flutter";
//
//  void _updateText() {
//    setState(() {
//      // 更新文字
//      textToShow = "Flutter is Awesome!";
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("你好标题"),
//      ),
//      body: Center(
////        child: Text(textToShow),
//      child: MaterialButton(
//        onPressed: () {},
//        child: Text(textToShow),
//        padding: EdgeInsets.only(left: 100.0, right: 10.0, top: 50),
//        color: Colors.blue,
//        focusColor: Colors.black,
//      ),
//        ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _updateText,
//        tooltip: "Update Text",
//        child: Icon(Icons.update)
//      ),
//    );
//  }
//
//}
