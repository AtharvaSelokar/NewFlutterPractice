import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
  static count({required int crossAxisCount,required List<Container>children
  }){}
}

class _GridState extends State<Grid> {
  var arrCity=[Colors.blue,
    Colors.grey,
    Colors.greenAccent,
    Colors.deepOrange,
    Colors.brown,
    Colors.pink,
    Colors.black,
    Colors.tealAccent,
    Colors.deepPurple,
    Colors.limeAccent,


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),),
      drawer: MyDrawer(),
      body:GridView.count(crossAxisCount: 2,children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[0]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[1]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[2]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[3]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[4]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[5]),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[6]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[7]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[8]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color:arrCity[9]),
        ),
      ],) ,
    );
  }
}
