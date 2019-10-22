import 'package:flutter/material.dart';

void main() => runApp(FadeAppTest());

class FadeAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fade Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Center(
        child: MyFadeTest(title: "标题", otherxx: "其他",),
      )
    );
  }
}

class MyFadeTest extends StatefulWidget {
  MyFadeTest({Key key, this.title, this.otherxx}): super(key: key);
  final String title;
  final String otherxx;

  @override
  _MyFadeTest createState() => _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {

  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 4000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + widget.otherxx),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: curve,
            child: FlutterLogo(
              size: 100.0,
            )
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        child: Icon(Icons.brush),
        onPressed: (){
          controller.forward();
        },
      ),
    );
  }

}