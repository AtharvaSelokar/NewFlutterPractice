import 'package:flutter/material.dart';
import 'package:flutter_practise/Cards.dart';
import 'package:flutter_practise/Listview.dart';
import 'package:flutter_practise/Login_second_screen.dart';
import 'package:flutter_practise/MyDrawer.dart';
import 'package:flutter_practise/Tile.dart';
import 'package:flutter_practise/Widgets/Custom_widgets.dart';
import 'package:flutter_practise/sample.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'GridView.dart';
import 'Gridview_builder.dart';
import 'Login_screen.dart';
import 'New_Login_page.dart';
import 'Provider/eligibility_provider.dart';
import 'SignUI.dart';
import 'Splash_screen.dart';
import 'age_eligibility.dart';
import 'colors.dart';
import 'multiplication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit( designSize: Size (375,812),
    builder:(BuilderContext,widget)=> MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practise',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:New_login_page(),
    ),
    );
  }
}
