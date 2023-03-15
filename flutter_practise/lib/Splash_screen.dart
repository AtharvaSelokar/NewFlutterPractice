import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_second_screen.dart';
import 'login_screen.dart';
import 'main.dart';



class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN="login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Login",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ),
      ),
    );
  }

  void whereToGo()async {
    var sharedpref=await SharedPreferences.getInstance();
    var isLoggedIn = sharedpref.getBool(KEYLOGIN);
    Timer (Duration(seconds: 1),(){
      if(isLoggedIn!=null){
        if(isLoggedIn) {
          Navigator.pushReplacement(context, MaterialPageRoute
            (builder: (context)=> second(),));
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute
            (builder: (context)=> MyHomePage(title: 'hi',),));
        }
      }else{

        Navigator.pushReplacement(context, MaterialPageRoute
          (builder: (context)=> second (),));
      }

    });
  }
}
