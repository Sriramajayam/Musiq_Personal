 import 'package:flutter/material.dart';
import 'package:loginproviderproject/data/new_account_model.dart';
 class RegisterProvider extends ChangeNotifier{
  RegisterError _fullname=RegisterError("", "");
  RegisterError _emailAddress=RegisterError("", "");
  RegisterError _userName=RegisterError("", "");
  RegisterError _password=RegisterError("", "");
  RegisterError _confirmPassword=RegisterError("", "");
   
   RegisterError get fullname=>_fullname;
   RegisterError get emailAdress=>_emailAddress;
   RegisterError get userName=>_userName;
   RegisterError get password=>_password;
   RegisterError get confirmPassword=>_confirmPassword;
   void fullNameError(String value){
if(value.isEmpty){
  _fullname=RegisterError(value, "Field is Required");
   }else{
  _fullname=RegisterError(value, "");
    
   }
   notifyListeners();
   }
 void emailAddressError(String value){
if(value.isEmpty){
  _emailAddress=RegisterError(value, "Field is Required");
   }else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      _emailAddress = RegisterError(value, "Invalid email Format");
    }
   else{
  _emailAddress=RegisterError(value, "");
    
   }
   notifyListeners();
   }
void userNameError(String value){
if(value.isEmpty){
  _userName=RegisterError(value, "Field is Required");
   }else if(RegExp(r'\s').hasMatch(value)){
       _userName = RegisterError(value, "Field should not contain space");        
      }
   else{
  _userName=RegisterError(value, "");
    
   }
   notifyListeners();
   }
void passWordError(String value){
  RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
if(value.isEmpty){
  _password=RegisterError(value, "Field is Required");
   } 
   else 
      if (!regex.hasMatch(value)) {
  _password=RegisterError(value, "Invalid passowrd");
    
      }
      else if(value!=_confirmPassword.value){
  _confirmPassword=RegisterError(value, "Field does not match");

      }
      
   else{
  _password=RegisterError(value, "");
  }
   notifyListeners();
   }
void confirmPassWordError(String value){
if(value.isEmpty){
  _confirmPassword=RegisterError(value, "Field is Required");
   } 
   else if (value!=password.value) {
  _confirmPassword=RegisterError(value, "Field does not match");
      }
   else{
     _confirmPassword=RegisterError(value, "");
   }
   notifyListeners();
   }
 }
 