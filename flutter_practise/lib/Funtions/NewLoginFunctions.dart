import 'dart:convert';
import 'package:flutter_practise/models/NewLoginModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_practise/NewLoginSecond.dart';
import '../NewLoginThird.dart';

class Userinfo {
  Future Userdata(BuildContext context,String userId,String password) async {


    final String apiUrl = "http://192.168.1.6:3003/user/login";
    // final String userId = _Username.text;
    // final String password = _password.text;
    final Map<String, String> data = {'user_id': userId, 'password': password};
    final http.Response response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(data),
        headers: {
          'Content-type': 'application/json',
        }
    );
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
    // final ApiData=responseData;
    final bool success = responseData['success'];
    if (success) {
      NewLoginModel newLoginModel = NewLoginModel(firstname: responseData['first_name'], lastname: responseData['last_name'], email: responseData['email_id']);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NewLoginSecond(newLoginModel: newLoginModel,)));
      return true;
    }
    else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NewLoginThird()));

      return false;
    }
  }
}


