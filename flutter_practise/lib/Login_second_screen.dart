
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'login_shared_preferances.dart';
class second extends StatefulWidget {
//   loginModel modelA;
//   second(modelA,
//   {required this.modelA}
// );

  // String Email,Password;
  // second({required this.Email,required this.Password});

  @override
  State<second> createState() => secondState();
}

class secondState extends State<second> {
  var Name;
  var Password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMyName();

  }
  void getMyName() async{
    PreferenceMethods p = PreferenceMethods();
    var someName =await p.getName("Name""password");
    setState(() {
      Name=someName;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child :
            Center(child: Text("Welcome..   \n You are Logged in ${Name} ",style: TextStyle(
              fontSize: 30,color: Colors.red,
            ),)),
          ),


          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute
                  (builder: (context)=> MyHomePage(title: 'hi',),));
              },
              child: Text("Log Out"))
          // Text("Email Id: ${Email}"),
          // Text("Password:${Password}"),
        ],
      ),
    );
  }
}
