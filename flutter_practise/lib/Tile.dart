import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';

import 'funt_A_for_gridView.dart';
class Tile extends StatefulWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  int optionSelection=0;

  void checkoption(int index){
    setState(() {
      optionSelection=index;
    });
  }
  Color Tilecolor=Colors.white;
  HashSet selectedItem=new HashSet();
  @override
  Widget build(BuildContext context) {
    var arrColors=[Colors.blue,
      Colors.grey,
      Colors.greenAccent,
      Colors.deepOrange,
      Colors.brown,
      Colors.pink,
      Colors.black,
      Colors.deepPurple,
      Colors.limeAccent,];
    return Scaffold(
      appBar: AppBar(title: Text('Tile'),),
      drawer: MyDrawer(),
      body: Container(
        child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 10,
            padding:const EdgeInsets.only(top: 10,right: 10,left: 10),crossAxisSpacing: 10,
            children: [
              for(int i=0; i<arrColors.length;i++)
                FunctionA(
                    color:arrColors[i]as Color,
                    onTap:()=>checkoption(i+1),

                    selected:i+1==optionSelection),

            ]
        ),
      ),
    );
    // void domultipleSelection(arrColors)
  }
}
