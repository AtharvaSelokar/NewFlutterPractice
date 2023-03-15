import 'package:flutter/material.dart';
import 'package:flutter_practise/MyDrawer.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignUI extends StatefulWidget {
  const SignUI({Key? key}) : super(key: key);

  @override
  State<SignUI> createState() => _SignUIState();
}

class _SignUIState extends State<SignUI> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    print("WIDTH : ${MediaQuery.of(context).size.width * 0.365}");
    return Scaffold(
      backgroundColor: Color(0xFFDCF1FF),
      body:Center
        (child: SingleChildScrollView(
          child: Container
          (child: Padding(
            padding: const EdgeInsets.all( 0.8,),
            child: Column(
            children: [
              SizedBox(height: 80,),
              Center(
                child: Text("Welcome",style: TextStyle
            (fontSize: 28,color: Colors.blue,
                fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 20,),
              Row(children: [
                SizedBox(
                  width: ScreenUtil().setWidth(55),
                ),

                // Padding(padding: const EdgeInsets.only(top: 10,),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(minimumSize: Size(MediaQuery.of(context).size.width * 0.3, 45), shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))
                    ), ),
                    onPressed: (){}, child: Text('Sign In',style: TextStyle(fontSize: 20),)),
                ElevatedButton(style:ElevatedButton.styleFrom(minimumSize: Size(MediaQuery.of(context).size.width * 0.365, 45),shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
                ) ,primary: Colors.white),
                    onPressed: (){}, child: Text('Register',style: TextStyle(fontSize: 20,color: Colors.blue),)),
              ],
              ),
          SizedBox(height: 20,),
          Container(
            // width: ScreenUtil().setWidth(900),
            width: MediaQuery.of(context).size.width*0.95,

            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              SizedBox(width: ScreenUtil().setWidth(68)),
              // FaIcon(FontAwesomeIcons.male,color: Colors.blue,),
              Column(
                children: [
                  FaIcon(FontAwesomeIcons.male,color: Colors.blue,),
                  Text('Parent',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(92),),

                  FaIcon(FontAwesomeIcons.userCircle,color: Colors.blue,),
                  Text('Student',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                ],
              ),
              Column(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(92),),

                  FaIcon(FontAwesomeIcons.chalkboardTeacher,color: Colors.blue,),
                  Text('Teacher',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                ],
              ),
              // SizedBox(width: 60,),
              ],

            ),
          ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Flexible(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Name",
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black12),


                  ),
                ),
              ),
            ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    // hintStyle: TextStyle(color: Colors.black),
                    labelText: "Email",
                    hintText: "Enter Email Id",
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Password",

                    hintText: "Enter Password ",
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black12),


                  ),
                ),
              ),
              SizedBox(
                height: 42,
              ),

              ElevatedButton(style: ElevatedButton.styleFrom
                (primary: Colors.white,minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55)),
                  onPressed: (){
              },
                  child: Text('Log In',style: TextStyle(color: Colors.black12),)),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 // SizedBox(
                 //   width: 12,
                 // ),
                 Row(
                   children: [
                     Checkbox( value: isChecked, onChanged: (bool ? value) {
                       setState(() {
                         isChecked = value!;
                       });
                     },),
                     Text('Remember Me'),
                   ],
                 ),

                 Text('Forgot Password'),

               ],),
             ),

              Container(height: ScreenUtil().setHeight(52),
                width:ScreenUtil().setWidth(342),
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),

              SizedBox(height: ScreenUtil().setHeight(25),),

              Container(height: ScreenUtil().setHeight(52),
                width: ScreenUtil().setWidth(342),
                child: SignInButton(
                  Buttons.Facebook,
                  onPressed: () {},
                ),
              ),


            ],
            ),

          )


      ),
        )
      )
    );
  }
}
