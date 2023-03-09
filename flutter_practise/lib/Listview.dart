import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => listviewState();
}

class listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    var arrCity=["Nagpur","pune","Mumbai","Delhi","Banglore","Hydrabad"];
    return Scaffold(
      appBar: AppBar(title: Text('ListView'),),
      drawer: MyDrawer(),
      body: Card(

        elevation: 100,
        shadowColor:Colors.black,
        child: Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(50),
            // color: Colors.black,
            // boxShadow: [BoxShadow(color: Colors.black)]
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
              // color: Colors.black
            ),
            child: ListView.separated(itemBuilder: (context,index)
            {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text(arrCity[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              );
            },
                itemCount:arrCity.length,
                separatorBuilder:(context,index){
                  return Divider();
                }

            ),
          ),
        ),
      ),
    );
  }
}
