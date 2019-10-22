
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {}, child: Text(label),);
  }

}

void main() => runApp(MaterialApp(
  home: Center(
    child: CustomButton("你好"),
  ),
));