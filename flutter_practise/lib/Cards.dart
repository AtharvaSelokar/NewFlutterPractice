import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card'),),
      drawer: MyDrawer(),
      body: Center(child: Card(
          elevation: 20,
          shadowColor: Colors.black,
          child: Text('Hello World',style: TextStyle(fontSize: 30),))),
    );
  }
}
