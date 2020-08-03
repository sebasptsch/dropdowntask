import 'package:flutter/material.dart';

class FinalCheesePage extends StatefulWidget {
  final finalCheese;
  const FinalCheesePage(this.finalCheese);

  @override
  _FinalCheesePageState createState() => _FinalCheesePageState();
}

class _FinalCheesePageState extends State<FinalCheesePage> {
  @override
  Widget build(BuildContext context) {
    print('here');
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: <Widget>[Center(child: Text(widget.finalCheese))],
      ),
    ));
  }
}
