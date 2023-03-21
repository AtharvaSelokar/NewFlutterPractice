
import 'package:flutter/material.dart';
import 'Funtions/NewLoginFunctions.dart';
import 'MyDrawer.dart';
class New_login_page extends StatefulWidget {
const New_login_page({Key? key}) : super(key: key);

@override
State<New_login_page> createState() => _New_login_pageState();
}

class _New_login_pageState extends State<New_login_page> {

  TextEditingController _Username=TextEditingController();
  TextEditingController _password=TextEditingController();
  Userinfo _userinfo = Userinfo();

@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.lightBlue[50],
resizeToAvoidBottomInset: false,
appBar: AppBar(title: Text('New_login_page'),),
drawer: MyDrawer(),
body: Center(child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [Text('Welcome',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
),
SizedBox(
height: 20,
),
TextFormField(
  controller: _Username,

keyboardType: TextInputType.text,
onChanged: (value){
    // if(value ==_Username)
},
decoration: InputDecoration(
labelText: "Usernmae",
hintText: "Enter Username",
prefixIcon: Icon(Icons.person),
border: OutlineInputBorder(),
),
),
SizedBox(
height: 20,
),
TextFormField(
  controller: _password,
keyboardType: TextInputType.text,
decoration: InputDecoration(
labelText: "Password",
hintText: "Enter Password",
prefixIcon: Icon(Icons.lock),
border: OutlineInputBorder(),
),
),
SizedBox(
height: 20,
),
ElevatedButton(
onPressed: (){
  _userinfo.Userdata(context,_Username.text,_password.text);
},


 child: Text('Login'))
]
),
),



);
}
}
