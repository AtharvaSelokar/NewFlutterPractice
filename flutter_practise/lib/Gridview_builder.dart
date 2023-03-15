import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({Key? key}) : super(key: key);

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  int selectedCard = -1;

  var arrColors=[Colors.blue.withOpacity(1),
    Colors.grey.withOpacity(1),
    Colors.greenAccent.withOpacity(1),
    Colors.deepOrange.withOpacity(1),
    Colors.brown.withOpacity(1),
    Colors.pink.withOpacity(1),
    Colors.black.withOpacity(1),
    Colors.deepPurple.withOpacity(1),
    Colors.limeAccent.withOpacity(1),];
  var arrOpacity=[Colors.blue.withOpacity(0.1),
    Colors.grey.withOpacity(0.1),
    Colors.greenAccent.withOpacity(0.1),
    Colors.deepOrange.withOpacity(0.1),
    Colors.brown.withOpacity(0.1),
    Colors.pink.withOpacity(0.1),
    Colors.black.withOpacity(0.1),
    Colors.deepPurple.withOpacity(0.1),
    Colors.limeAccent.withOpacity(0.1)];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridViewBuilder'),),
      drawer: MyDrawer(),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, ),
          itemCount: arrColors.length,
          itemBuilder: (context,index){
            return Container(
              child: InkWell(onTap:(){
                setState(() {


                });
              },

                splashColor: Colors.red,
                // highlightColor: Colors.yellow,
                // splashColor: Colors.cyan,);
              child: Container(child: Padding(padding: const EdgeInsets.all(8.0),
                child: Container(color: arrColors[index],),),



              ),
              ),
            );
          }
      ),
    );

  }
}
