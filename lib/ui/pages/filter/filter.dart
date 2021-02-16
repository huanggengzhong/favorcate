import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  static const String routeName="/filter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("过滤条件"),
      ),
      body: Text("todo"),
    );
  }
}
