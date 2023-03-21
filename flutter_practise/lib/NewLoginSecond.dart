import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_practise/models/NewLoginModel.dart';
import 'package:flutter_practise/utilitis/end_points.dart';
import 'package:http/http.dart' as http;
// import 'package:sing_up/Modelbase.dart';
// import 'package:sing_up/utilities/Link.dart';
class NewLoginSecond extends StatefulWidget {
  NewLoginModel newLoginModel;
  NewLoginSecond({Key? key, required this.newLoginModel}) : super(key: key);

  @override
  State<NewLoginSecond> createState() => _NewLoginSecondState();
}

class _NewLoginSecondState extends State<NewLoginSecond> {
  // print(Getdata["success"]);



 late NewLoginModel newLoginModel;
  var Getdata ;
  var mapResponse;
 //
 // Future Userinfo() async{
 //    http.Response response;
 //    Map<String,String> body = {
 //      // NewLogin.username
 //      // "user_id":"user1",
 //      // "password":"password1"
 //    };
 //    response = await http.post(Uri.parse("$postApi"),
 //        body: json.encode(body),
 //        headers: {
 //          "Content-type": "application/json",
 //        }
 //    );
 //    // final Map<String,dynamic>responseData=jsonDecode(response.body);
 //    // final bool success=responseData["success"];
 //    // if(success){
 //    //   print('Logged in');
 //    // }else{print('Error');}
 //
 //    mapResponse = json.decode(response.body);
 //    setState(() {

      //  // Getdata = mapResponse;
      // final newLoginModel1 = NewLoginModel(UserName: "${["first_name"]} ${["last_name"]}",
      //     email:"${["email_id"]}" );
        // final NewLoginModel newLoginModel=NewLoginModel(firstname: firstname, lastname: lastname, email: email)
 //    });
 //  }

  // @override
  // void initState() {
  //   Userinfo();
  //   Getdata;
  //   super.initState();
  // }
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
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Email:",style: TextStyle(fontSize: 25),),
              ],
            ),
            Text("${widget.newLoginModel.email}",style: TextStyle(fontSize: 25),),

            SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("First_Name: ${widget.newLoginModel.firstname}",style: TextStyle(fontSize: 25),),
                ],
              ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Last_Name: ${widget.newLoginModel.lastname}",style: TextStyle(fontSize: 25),),
                // Text(Getdata["last${widget.newLoginModel.firstname}_name"].toString(),style: TextStyle(fontSize: 25),),

              ],
            ),
            // Text(Getdata["last_name"].toString(),style: TextStyle(fontSize: 25),),
            // Text(Getdata["email_id"].toString(),style: TextStyle(fontSize: 25),),
            // Text(Getdata["mobile_no"].toString(),style: TextStyle(fontSize: 25),),
          ],
        ),
      ),

    );
  }
}

