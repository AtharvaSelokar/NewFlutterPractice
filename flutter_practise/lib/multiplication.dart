import 'package:flutter/material.dart';
import 'package:flutter_practise/Home.dart';
import 'package:flutter_practise/Listview.dart';
import 'package:flutter_practise/Login_screen.dart';
import 'package:flutter_practise/MyDrawer.dart';
import 'package:flutter_practise/Provider/multiplication_provider.dart';
import 'package:flutter_practise/models/constructor_multiplication.dart';
import 'package:provider/provider.dart';

import 'GridView.dart';
import 'multiplication_output.dart';
class multiplication extends StatefulWidget {
// final TextEditingController = controller;
  const multiplication({Key? key}) : super(key: key);

  @override
  State<multiplication> createState() => _multiplicationState();
}


class _multiplicationState extends State<multiplication> {
  var num1=TextEditingController();
  var num2=TextEditingController();
  var result;
  // var multiply = multiply(num1: .num1, num2: num2, result: result)


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(title: (Text('Flutter Practise')),),
      drawer:MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child:ChangeNotifierProvider<multiplicationProvider>(
            create: (context)=>multiplicationProvider(),
          child:Consumer<multiplicationProvider>(
            builder:(context,provider,child){
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.validityMessage.toString()  ,style:
              TextStyle(fontSize: 10,color: (provider.isValid==true) ? Colors.green :Colors.red),),
              Text("Multiplication of two numbers",
                style: TextStyle(fontSize: 26),),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: num1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter first number',
                  border: OutlineInputBorder()
                ),
                onChanged: (val){
                  provider.checkValidity(int.parse(val));
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: num2,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter second number',
                    border: OutlineInputBorder()

                ),
                onChanged: (val){
                  provider.checkValidity(int.parse(val));
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){

                // a=num1*num2;

                result = calculate(int.parse(num1.text), int.parse(num2.text));

                // result=int.parse(num1.text)*int.parse(num2.text);
                Navigator.pushReplacement(context, MaterialPageRoute
                  (builder: (context)=> Output(result: result),));
              },
                  child: Text('Multiply'))
            ],
            );

            }
          )

          ),
        ),
      ),

    );
  }

  int calculate(int num1,int num2){
    return num1 * num2 ;
  }
}

