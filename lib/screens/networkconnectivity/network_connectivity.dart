import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/screens/bottomnavigationbar/bottom.dart';
import 'package:loginproviderproject/screens/bottomnavigationbar/bottom_nav_bar.dart';
import 'package:loginproviderproject/screens/splashscreen/splaah_screen.dart';
import 'package:provider/provider.dart';
class NetworkConeectivity extends StatefulWidget {
  const NetworkConeectivity({Key? key}) : super(key: key);

  @override
  State<NetworkConeectivity> createState() => _NetworkConeectivityState();
}

class _NetworkConeectivityState extends State<NetworkConeectivity> {
  
  @override
  LoginProvider? _Loginprovider;
 void initState(){
 _Loginprovider=Provider.of<LoginProvider>(context,listen: false);
_Loginprovider?.checkRealtimeConnection();
  super.initState;
  
 }

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<LoginProvider>(context);
    print(pro.status);
    return Scaffold(
      backgroundColor: color1,
      body:pro.status=="OFFLINE"?
       Center(
        child:Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Image.asset("assets/images/no_internet1.png"),
             Image.asset("assets/images/no_internet2.png"),
             Image.asset("assets/images/no_internet3.png"),
             Image.asset("assets/images/no_internet4.png"),
             SizedBox(height: 24,),
             Text("No Internet",style: GoogleFonts.poppins(
              textStyle: TextStyle(color: color2,fontSize: 16)
             ),),
             Text("Please check your connection",style: GoogleFonts.poppins(
              textStyle: TextStyle(color: color5,fontSize: 14)
             ),),
             SizedBox(height: 50,),
             Container(
              height: 46,
              width: 122,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(254, 86, 49, 1),
                
              ),
              child: Center(
                child: Text("Retry",style: GoogleFonts.poppins(
                textStyle: TextStyle(color: color2,fontSize: 16)
             ),
             ),
              )
             )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120,top: 230),
              child: Container(
                height: 60, 
                width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(254, 86, 49, 1), ),
              child: Icon(Icons.cancel,),
              ),
            )
          ],
        ),
      ):SplashScreen()

    );
  }
}