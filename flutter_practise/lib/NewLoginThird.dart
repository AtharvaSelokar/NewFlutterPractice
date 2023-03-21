import 'package:flutter/material.dart';
class NewLoginThird extends StatefulWidget {
  const NewLoginThird({Key? key}) : super(key: key);

  @override
  State<NewLoginThird> createState() => _NewLoginThirdState();
}

class _NewLoginThirdState extends State<NewLoginThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Email:",style: TextStyle(fontSize: 25),),
                Text("null",style: TextStyle(fontSize: 25),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("First_Name:",style: TextStyle(fontSize: 25),),
                Text("null",style: TextStyle(fontSize: 25),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Last_Name:",style: TextStyle(fontSize: 25),),
                Text("null",style: TextStyle(fontSize: 25),),

              ],
            ),

          ],
        ),
      ),

    );
  }
}

