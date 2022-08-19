import 'package:flutter/material.dart';
import 'package:loginproviderproject/provider/new_account_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/screens/bottomnavigationbar/bottom.dart';
import 'package:loginproviderproject/screens/bottomnavigationbar/bottom_nav_bar.dart';
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