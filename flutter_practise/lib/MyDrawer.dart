import 'package:flutter/material.dart';

import 'Cards.dart';
import 'GridView.dart';
import 'Home.dart';
import 'Listview.dart';
import 'Login_screen.dart';
class MyDrawer extends StatelessWidget {

  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text('App Drawer',style: TextStyle(fontSize: 25),),



                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                title: Text('Home',style: TextStyle(fontSize: 18),),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home(),));
                },

              ),
              ListTile(
                title: Text('Login form',style: TextStyle(fontSize: 18),),
                leading: Icon(Icons.login),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage(title: "hi"),));
                },
              ),
              ListTile(
                title: Text('ListView',style: TextStyle(fontSize: 18),),
                leading: Icon(Icons.list),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const listview(),));
                },
              ),
              ListTile(
                title: Text('GridView',style: TextStyle(fontSize: 18),),
                leading: Icon(Icons.grid_3x3),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Grid(),));
                },
              ),
              ListTile(
                title: Text('Card',style: TextStyle(fontSize: 18),),
                leading: Icon(Icons.add_card),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Cards(),));
                },

              ),
            ],
          )
        ],
      ),
    );

  }
}
