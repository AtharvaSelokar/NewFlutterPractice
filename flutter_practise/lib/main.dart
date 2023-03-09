import 'package:flutter/material.dart';
import 'package:flutter_practise/Cards.dart';
import 'package:flutter_practise/Listview.dart';
import 'package:flutter_practise/Login_second_screen.dart';
import 'package:flutter_practise/MyDrawer.dart';
import 'package:flutter_practise/Widgets/Custom_widgets.dart';

import 'GridView.dart';
import 'Login_screen.dart';
import 'Provider/eligibility_provider.dart';
import 'Splash_screen.dart';
import 'age_eligibility.dart';
import 'multiplication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practise',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:multiplication()
    );
  }
}
