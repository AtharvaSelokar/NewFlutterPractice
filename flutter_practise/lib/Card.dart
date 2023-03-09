import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ('Appbar',)),
      drawer: MyDrawer(),
      body: Text('Hello World',style: TextStyle(fontSize: 27),),
    );
  }
}
