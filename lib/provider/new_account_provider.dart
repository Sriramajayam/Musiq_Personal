import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier{
  bool FullNameField=false;
  bool EmailAddress=false;
  bool Username=false;
  bool Password=false;
  bool ConfirmPassword=false;
  bool ValidEmail=false;
  void isFullFieldReqired(bool changes){
  FullNameField=changes;
  notifyListeners();
  } 
    
  void isEmailAddressFieldReqired(bool status){
  EmailAddress=status;
  notifyListeners();
  } 
  void isUsernameFieldReqired(bool status){
  Username=status;
  notifyListeners();
  } 
   void isConfirmPasswordFieldReqired(bool status){
  ConfirmPassword=status;
  notifyListeners();
  } 
   void isPasswordFieldReqired(bool status){
  Password=status;
  notifyListeners();
  } 
  void isvalidEmail(bool status){
   ValidEmail=status;
  }

}