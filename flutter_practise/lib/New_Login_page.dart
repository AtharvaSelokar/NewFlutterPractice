import 'package:flutter/material.dart';

import 'MyDrawer.dart';
class New_login_page extends StatefulWidget {
  const New_login_page({Key? key}) : super(key: key);

  @override
  State<New_login_page> createState() => _New_login_pageState();
}

class _New_login_pageState extends State<New_login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New_login_page'),),
      drawer: MyDrawer(),
      body: Center(child: Text('Welcome')),


    );
  }
}
