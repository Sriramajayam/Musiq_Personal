import 'package:flutter/material.dart';
import 'package:loginproviderproject/provider/forgot_passsword_provider.dart';
import 'package:loginproviderproject/provider/login_provider.dart';
import 'package:loginproviderproject/provider/new_account_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/provider/register_provider.dart';
import 'package:loginproviderproject/screens/forgotpassword/forgot_password.dart';

import 'package:loginproviderproject/screens/networkconnectivity/network_connectivity.dart';
import 'package:provider/provider.dart';
 void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>LoginProvider()),
      // ChangeNotifierProvider(create: (context)=>RegisterProvider()),
      ChangeNotifierProvider(create: (context)=>LogInProvider()),
      ChangeNotifierProvider(create: (context)=>ForgotPasswordProvider()),
      ChangeNotifierProvider(create: (context)=>RegisterProvider()),
      
    ], 
    
    child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      NetworkConeectivity(),
    ));
  }
}