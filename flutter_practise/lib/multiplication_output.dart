import 'package:flutter/material.dart';
import 'package:flutter_practise/models/constructor_multiplication.dart';
import 'package:flutter_practise/multiplication.dart';
class Output extends StatefulWidget {
  Output({Key? key, required this.result}) : super(key: key);
  int result;
  @override
  State<Output> createState() => OutputState();
}

class OutputState extends State<Output> {
// var x=multiply(num1: multiply.num1, num2: num2, result: result);

  // var multiply=multiply(num1: num1, num2: num2, result: result)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Multiplication of two number is\n\n${widget.result}',style: TextStyle(fontSize: 24),),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute
                (builder: (context)=> multiplication(),));
            },
                child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
