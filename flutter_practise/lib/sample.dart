import 'package:flutter/material.dart';
class sample extends StatefulWidget {
  @override
  _sampleState createState() => _sampleState();
}

class _sampleState extends State<sample> {
  var arrColors=[Colors.blue,
    Colors.grey,
    Colors.greenAccent,
    Colors.deepOrange,
    Colors.brown,
    Colors.pink,
    Colors.red,
    Colors.deepPurple,
    Colors.limeAccent,
    Colors.green];
  var arrOpacity=[Colors.blue.withOpacity(0.5),
    Colors.grey.withOpacity(0.5),
    Colors.greenAccent.withOpacity(0.5),
    Colors.deepOrange.withOpacity(0.5),
    Colors.brown.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.red.withOpacity(0.5),
    Colors.deepPurple.withOpacity(0.5),
    Colors.limeAccent.withOpacity(0.5),
    Colors.green.withOpacity(0.5),];

  int selectedCard = 1;
  // List<bool> SelectColor = List.generate(10, (_) => false);
  List<bool> SelectColor =[false,false,false,false,false,false,false,false,false,false,];

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
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = index;
                SelectColor[index] = !SelectColor[index];

              });
            },
            child: Card(
              color:  SelectColor[index] ? arrOpacity[index]as Color : arrColors[index]as Color,
              child: Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Text(
                    '$index',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
