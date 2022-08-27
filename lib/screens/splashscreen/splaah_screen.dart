import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:loginproviderproject/bottom.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';


import '../onboardingscreen/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FlutterSecureStorage securestoragae = FlutterSecureStorage();
  
  @override

  void initState(){
    super.initState();
     
    Timer(Duration(seconds: 3),()=>cheaklogged());
  }
  cheaklogged()async{
var isload= await securestoragae.read(key: "islogged") ?? "false";
 if(isload=="true"){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
 }
 else{
 
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
 }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: color1,
    body: Center(
     child: Image.asset("assets/images/splashlogo.png",height: 150,),
    ),
    );
  }
}