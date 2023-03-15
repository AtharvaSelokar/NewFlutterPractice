import 'dart:collection';

import 'dart:collection';

import 'package:flutter/material.dart';
class Color1 extends StatefulWidget {
  @override
  _Color1State createState() => _Color1State();
}

class _Color1State extends State<Color1> {
  // Color _ContainerColor = Colors.white;
  var arrColors=[
    Colors.blue,
    Colors.grey,
    Colors.greenAccent,
    Colors.deepOrange,
    Colors.brown,
    Colors.pink,
    Colors.yellow,
    Colors.deepPurple,
    Colors.red,];

  var arrOpacity=[Colors.blue.withOpacity(0.5),
    Colors.grey.withOpacity(0.5),
    Colors.greenAccent.withOpacity(0.5),
    Colors.deepOrange.withOpacity(0.5),
    Colors.brown.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.deepPurple.withOpacity(0.5),
    Colors.red.withOpacity(0.5)];
  var arrSelect=[Colors.blue.withOpacity(0.5),
    Colors.grey.withOpacity(0.5),
    Colors.greenAccent.withOpacity(0.5),
    Colors.deepOrange.withOpacity(0.5),
    Colors.brown.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.deepPurple.withOpacity(0.5),
    Colors.red.withOpacity(0.5)];

  var arrTemp=[];
  int selectedCard = -1;
  // List<bool> _isSelectedList = List.generate(10, (_) => false); // replace with the actual number of items in your list

  // var HashSet=selectedItem=new HashSet();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: arrColors.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 3),
        ),
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {

              setState(() {
                selectedCard = index;
                // _isSelectedList[index] = !_isSelectedList[index]; // toggle the selection state of the item

              });
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                color: selectedCard == index ? arrOpacity[index]as Color : arrColors[index]as Color,
                child: Card(
                  // color: arrTemp.contains(arrOpacity[index].toString())?"Remove": "Add"  ,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Text(
                        '$index',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
