
import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {

  @override
  _SampleAppPage createState() => _SampleAppPage();
}

class _SampleAppPage extends State<SampleAppPage> {

  var widgets = <Widget>[];

  @override
  void initState() {
    super.initState();
    widgets.add(getRow(0));
    widgets.add(getRow(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
//      body: ListView(children: widgets),
      body: ListView.builder(itemBuilder: (BuildContext context, int position) {
        return widgets[position];
      }, itemCount: widgets.length,),
    );
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i ++) {
//      widgets.add(Padding(padding: EdgeInsets.all(10.0), child: Text('Row $i'),));
      widgets.add(GestureDetector(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Row $i"),
        ),
        onTap: () {
          print("row tapped $i");
        },
      ));
    }
    return widgets;
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Row $i",
          style: TextStyle(fontFamily: 'AlexBrush', color: Colors.yellow),),
      ),
      onTap: () {
        setState(() {
//          widgets = List.from(widgets);
          widgets.add(getRow(widgets.length + 1));
          print("Row $i");
        });
      },
    );
  }

}