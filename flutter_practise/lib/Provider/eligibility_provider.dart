
import 'package:flutter/material.dart';
class EligibilityProvider with ChangeNotifier{
  bool? isEligible;
  String? EligibilityMessage="";

  void checkValidity(int age){
    if(age>=18){
      isEligible=true;
      EligibilityMessage="You are Eligible";
      notifyListeners();
    }
    else{
      isEligible=false;
      EligibilityMessage="You are not Eligible";
      notifyListeners();
    }
  }
}