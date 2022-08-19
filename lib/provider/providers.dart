

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:connectivity_plus/connectivity_plus.dart'
;

class LoginProvider extends ChangeNotifier{
  bool PasswordVisible=false;
  bool isRedLoading=false;
  bool isGreenLoading=false;
  int _selectedintex=0;
  bool isNotText=false;
  File? ram;
  String status='waiting...';
  final Connectivity _connectivity=Connectivity();

    void notPasswordVisible(){
     PasswordVisible=!PasswordVisible;
    notifyListeners();
  }
  
  
  void isnotGreenLoading(){
    isGreenLoading=true;
    notifyListeners();
  }
   void isnotGreennLoading(){
    isGreenLoading=false;
    notifyListeners();
  }
   void isnotRedLoading(){
    isRedLoading=true;
    notifyListeners();
  }
  
  
  void isnotReddLoading(){
    isRedLoading=false;
    notifyListeners();
  }
  int get fetchscreen{
    return _selectedintex;
  }
   void onitemtapped(int index){
    _selectedintex=index;
    notifyListeners(); 
     
}

 Future pickImage(ImageSource source)async{
    final image=await ImagePicker().pickImage(source: source,);
    if(image==null) return;
    final imagetemp=File(image.path);
     ram=imagetemp; 
      notifyListeners();
}
void cheakconnection()async{
    var connectionResult=await _connectivity.checkConnectivity();
        if(connectionResult==ConnectivityResult.mobile){
             status="CONNECT THE DATA";
             notifyListeners();
               }else if(connectionResult==ConnectivityResult.wifi){
                status="CONNECT THE WIFI";
                 notifyListeners();
                 }else{
                status="OFFLINE";
                notifyListeners();
               }
              }
              void checkRealtimeConnection() {
                var _streamSubscription =_connectivity.onConnectivityChanged.listen((event) {
                  switch(event){
           case ConnectivityResult.mobile:{
            status="CONNECT THE DATA";
            notifyListeners();
           }
           break;

           case ConnectivityResult.wifi:{
            status= "CONNECT THE WIFI";
            notifyListeners();
           }
           break;
           default:{
                 status="OFFLINE";
              notifyListeners();
           }
           break;
                  }

                 });
              }
              void alertBox(){
                isNotText=true;
                notifyListeners();
              }
              void notAlertBox(){
                isNotText=false;
                notifyListeners();
              }
              bool isPassword=false;
              void isNotPassword(){
                isPassword=true;
                notifyListeners();
              }
             void isNottPassword(){
                isPassword=false;
                notifyListeners();
              }
              bool Error=false;
               void isError(){
                Error=false;
                notifyListeners();
              }
               void isNoterror(){
                Error=true;
                notifyListeners();
              }
              bool conformError=false;
                void conError(){
                conformError=true;
                notifyListeners();
              }  void notConError(){
                conformError=false;
                notifyListeners();
              }
              bool NotConform=false;
               void isNotCon(){
                NotConform=false;
                notifyListeners();
              }
               void isCon(){
                NotConform=true;
                notifyListeners();
              }
              


}
