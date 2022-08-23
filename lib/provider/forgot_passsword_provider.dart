import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginproviderproject/data/forgot_model.dart';
class ForgotPasswordProvider extends ChangeNotifier{
ForgotError _forgotEmail=ForgotError("", "");
ForgotError get forgotEmail=>_forgotEmail;
void emailError(String value){
if(value.isEmpty){
  _forgotEmail=ForgotError(value, "Field is Required");
} else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
    _forgotEmail = ForgotError(value, "Invalid email Format");
    }

else{
  _forgotEmail=ForgotError(value, "");
  
}
notifyListeners();
}
}