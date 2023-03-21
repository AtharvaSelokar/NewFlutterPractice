import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_practise/utilitis/end_points.dart';
import 'package:http/http.dart' as http;
// import 'package:newlogin/models/Api_models.dart';
// import 'package:newlogin/utils/endpoints.dart' as endpoints;
import 'dart:convert';

import 'models/Api_models.dart';



class Api extends StatefulWidget {

  const Api({Key? key,}) : super(key: key);

  @override
  State<Api> createState() => ApiState();


}

class ApiState extends State<Api> {
  late Model model;
  //Model model=Model(first_name:'first_name', last_name: 'last_name');
  var stringResponse;
  var  mapResponse;
  var dataResponse;
  var a=true;
  var listResponse;
  List<Model> listOfData= [];



  Future apicall()async{
    http.Response response;
    response= await http.get(Uri.parse("${dummyApi}"));

    if(response.statusCode==200){


      mapResponse=json.decode(response.body);
      listResponse=mapResponse['data'];
      log(listResponse.toString());
      setState(() {
        //  model = Model(first_name: dataResponse['first_name'], last_name: dataResponse['last_name']);
        a=false;
      });

      int i;
      for( i=0;i<listResponse.length ;i++)
      {
        print("${listResponse[i]['id']}");
        listOfData.add(Model(first_name: "${listResponse[i]['first_name']}",
            last_name: "${listResponse[i]['last_name']}",
            id: "${listResponse[i]['id']}",
            email: "${listResponse[i]['email']}",
            image: "${listResponse[i]['avatar']}"
        ));
      }
    }
  }


  @override
  void initState() {
    apicall();
    stringResponse;
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Api calls"),
        ),
        body:ListView.builder(itemBuilder: (context,index){
          return SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(listOfData[index].image),
                  ),

                  Text(listOfData[index].id),

                  Text(listOfData[index].first_name),
                  // Text(listResponse[index]['email'].toString()),
                  // Text(listResponse[index]['first_name']),
                  Text(listOfData[index].last_name),
                  Text((listOfData[index].email),),

                ],
              ),
            ),
          );
        },
          itemCount: listOfData == []? 0:listOfData.length,
        )

    );
  }
}





































//   child: Container(
//     height: 200,
//     width: 300,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius .circular(20)
//     ),
//     child: Card(
//       elevation: 20,
//       shadowColor: Colors.black,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child:a ? Text("Data is Loading"): Text(
//           model.first_name,
//           style: TextStyle(fontSize: 30,),
//
//         ),
//       ),
//     ),
//   ),
// ),
