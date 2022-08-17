import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/screens/bottomnavigationbar/bottom.dart';

import '../onboardingscreen/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen())));
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