import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/data/listdatas.dart/bottom_data.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/screens/loginpage/login_page.dart';
import 'package:loginproviderproject/screens/forgotpassword/reset_password.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
import 'package:loginproviderproject/screens/profilescreen/profile_edit_provider.dart';
import 'package:loginproviderproject/screens/profilescreen/profile_page.dart';
import 'package:provider/provider.dart';

 


class Bottomm extends StatefulWidget {
  
  const Bottomm({Key? key}) : super(key: key);


  @override
  State<Bottomm> createState() => _BottommState();
}

class _BottommState extends State<Bottomm> {
  
  // int _selectedintex=0;
  static  List<Widget>_widgetoptions=<Widget>[
     signuppage(),
     MyProfilePages(),
     ResetPassword(),
     ProfilePage(),
    
   
     ];

  

  @override
  Widget build(BuildContext context) {
    
    final pro = Provider.of<LoginProvider>(context);
int currentScreenIndex =pro.fetchscreen;
    return 
       Scaffold(
          backgroundColor: color1,
          body: Center(
            child:_widgetoptions.elementAt(currentScreenIndex) ,
          ),
            bottomNavigationBar: 
          Theme(
             data: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
            child: BottomNavigationBar(
              
            type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromARGB(27, 100, 100, 100),
              items: 
            List.generate(bottomItems.length,(index)=>
              BottomNavigationBarItem(
                
               icon: Column(
                children: [
                 CircleAvatar(
                  backgroundColor: currentScreenIndex==index?Colors.red:Colors.transparent,
                 
                  child: Icon(bottomItems[index].iconData,color: currentScreenIndex==index?
                Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
                 ),
                  Text(bottomItems[index].labelData,style: 
                  GoogleFonts.poppins(textStyle:
                  TextStyle(
                    color: currentScreenIndex==index?
                Colors.white:Color.fromRGBO(255, 255, 255, 0.35) ),),
                  )
                ],
               ),
               label: ""
              ),
            ),
              currentIndex: currentScreenIndex,
              selectedItemColor: Colors.yellow,
              
              unselectedItemColor: Color.fromARGB(88, 179, 49, 49),
              onTap:(index){
                print(index);
                pro.onitemtapped(index);
              }
              ),
          ),
       );
  }
}
          
        
    
    


   