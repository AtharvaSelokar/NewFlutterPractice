import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/eligibility_provider.dart';

class Eligibility extends StatefulWidget {
  const Eligibility({Key? key}) : super(key: key);

  @override
  State<Eligibility> createState() => _EligibilityState();
}

class _EligibilityState extends State<Eligibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body:Center(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child:ChangeNotifierProvider<EligibilityProvider>(
                create: (context)=>EligibilityProvider(),
                child: Consumer<EligibilityProvider>(
                  builder: (context,provider,child){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                Text(provider.EligibilityMessage.toString(),style: TextStyle(fontSize:19,color: (provider.isEligible==true)?Colors.green:Colors.red),),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      hintText: "Enter your age"
                  ),
                     onChanged: (val){
                      provider.checkValidity(int.parse(val));
                      },
                  ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // ElevatedButton(onPressed: (){
                      //
                      // },
                      //     child: Text('Check'))
                  ],
                   );
                },
              ),
            ),
          ),
          ),
      );
   }

   }
