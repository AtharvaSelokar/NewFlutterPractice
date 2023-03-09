import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'),),
      drawer: MyDrawer(),
      body: Center(child: Text('HomePage...',style: TextStyle(fontSize: 30),)),
    );
  }
}
