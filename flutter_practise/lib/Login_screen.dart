import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_practise/models/Login_model.dart';

// import 'package:newlogin/SplashScreen.dart';
// import 'package:newlogin/listview.dart';
// import 'package:newlogin/models/login_model.dart';
// import 'package:newlogin/preferance.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'Login_second_screen.dart';
// import 'SecondScreen.dart';
import 'Splash_screen.dart';
import 'login_shared_preferances.dart';
import 'models/Login_model.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState(){
    _selectedVal=_selectlist[0];
    final _formKey= GlobalKey<FormState>();
  }
// var modelA= Email;
  TextEditingController _Email=TextEditingController();
  TextEditingController _password=TextEditingController();
  final _selectlist=["Admin","User"];
  String?_selectedVal="";
  bool passToggle = true;
  final _formKey= GlobalKey<FormState>();
  // var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      drawer: MyDrawer(),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(

          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("assets/images/bg2.jpg"),
              fit: BoxFit.cover,

            ),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",style: TextStyle(
                fontSize: 35,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
              ),

              SizedBox(
                height: 27,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                    key: _formKey,
                    child:Column(
                      children: [
                        TextFormField(
                          controller: _Email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Email Id",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          validator:(value) {
                            if (value!.isEmpty || !RegExp(
                                r'^[\w-\,]+@([\w-]+\.)+[\w]{2,4}').hasMatch(
                                value!)) {
                              return "Enter Email";
                            };

                          },
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        TextFormField(

                          controller: _password,
                          obscureText: passToggle,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Password",
                            prefixIcon: Icon(Icons.lock),
                            suffix: InkWell(
                              onTap: (){
                                setState(() {
                                  passToggle=!passToggle;
                                });
                              },
                              child: Icon(passToggle ? Icons.visibility:Icons.visibility_off),
                            ),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){

                          },
                          validator: (value){
                            return value!.isEmpty ? "Please Enter password ": null;
                          },
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Text("Login as:",style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,),
                          textAlign:TextAlign.left,

                        ),
                        SizedBox(
                          height: 20,
                        ),


                        Container(
                          width: 280,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)
                          ),
                          child: DropdownButton(
                            value: _selectedVal,
                            items:_selectlist.map(
                                    (e)=> DropdownMenuItem(child: Text(e),value: e,)
                            ).toList(),


                            onChanged: (val){
                              setState(() {
                                _selectedVal=val as String;
                              });
                            },
                          ),
                        ),



                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 200,
                          child: ElevatedButton(

                            child: Text("Login",style: TextStyle(
                              fontSize: 20,)),

                            onPressed: ()async {
                              var sharedpref= await SharedPreferences.getInstance();
                              sharedpref.setBool(SplashScreenState.KEYLOGIN, true);

                              if (_formKey.currentState!.validate()) {
                                loginModel modelVar=loginModel(email: _Email, password: _password);
                                PreferenceMethods p = PreferenceMethods();
                                p.setName(_Email.text);
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context) => second()));
                                // var a=_Email.text;
                                var b=_password.text;
                                print( _Email);
                                print(_password);


                                // }else{
                                //   print("Not in if condn")
                              };
                            },
                          ),
                        ),

                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}