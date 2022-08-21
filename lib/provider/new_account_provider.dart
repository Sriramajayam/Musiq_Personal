import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier{
  bool FullNameField=false;
  bool EmailAddress=false;
  bool Username=false;
  bool Password=false;
  bool ConfirmPassword=false;
  bool ValidEmail=false;
  bool Alertbox=false;
  bool FieldMatch=false;
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
  notifyListeners();
  }
   void isAlertBox(bool status){
   Alertbox=status;
   notifyListeners();
  }
  void isFieldMatch(bool status){
   FieldMatch=status;
   notifyListeners();
  }
  bool Space=false;
   void isSpaceField(bool status){
   Space=status;
   notifyListeners();
  }
  bool passwordVisibliti=false;
   void isPasswordVisiblity(){
   passwordVisibliti=!passwordVisibliti;
   notifyListeners();
  } 
  bool ConfirmpasswordVisibliti=false;
  
  void isConfirmPassword(){
   ConfirmpasswordVisibliti=!ConfirmpasswordVisibliti;
   notifyListeners();
  }


}