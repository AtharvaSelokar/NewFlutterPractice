
import 'package:flutter/material.dart';
class multiplicationProvider with ChangeNotifier{
  bool? isValid;
  String? validityMessage="";

  void checkValidity(int num){
    if(num==int){
      isValid=true;
      validityMessage="Valid input";
    notifyListeners();
    }
    else{
      isValid=false;
      validityMessage="Please enter numbers only";
      notifyListeners();
    }
  }
}