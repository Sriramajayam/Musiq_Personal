

import 'package:flutter/material.dart';




import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
import 'package:provider/provider.dart';

 


class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);


  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedintex=0;
static  List<Widget>_widgetoptions=<Widget>[
// signuppage(),
// signuppage(),
// signuppage(),
// signuppage(),
];
  

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<LoginProvider>(context);
int currentScreenIndex =pro.fetchscreen;
    return 
       Scaffold(
          backgroundColor: color1,
          body: Center(
            child:_widgetoptions.elementAt(_selectedintex) ,
          ),
            bottomNavigationBar: 
          BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(27, 100, 100, 100),
            items: <BottomNavigationBarItem>
          [
            BottomNavigationBarItem(
             icon: Column(
              children: [
               CircleAvatar(
                backgroundColor: currentScreenIndex==0?Colors.red:Colors.transparent,
               
                child: Icon(Icons.home,color: currentScreenIndex==0?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
               ),
                Text("Home",style: 
                GoogleFonts.poppins(textStyle:
                TextStyle(
                  color: currentScreenIndex==0?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35) ),),
                )
              ],
             ),
             label: ""
            ),
          
           BottomNavigationBarItem(
             icon: Column(
              children: [
                CircleAvatar(
                  backgroundColor: currentScreenIndex==1?Colors.red:Colors.transparent,
                  child: Icon(Icons.music_note,color: currentScreenIndex==1?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
                ),
                Text("Library",style:
                GoogleFonts.poppins(textStyle:
                 TextStyle(
                   color: currentScreenIndex==1?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
                )
              ],
             ),
             label: ""
            
              
            
            ),
          
           BottomNavigationBarItem(
             icon: Column(
              children: [
               CircleAvatar(
                backgroundColor: currentScreenIndex==2?Colors.red:Colors.transparent,
                child: Icon(Icons.podcasts,color: currentScreenIndex==2?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
               ),
                
                Text("Podcost",style: 
                GoogleFonts.poppins(textStyle: 
                TextStyle(
                 color: currentScreenIndex==2?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
                )
              ],
             ),
             label: ""
            
              
            
            ),
           
          
            BottomNavigationBarItem(
             icon: Column(
              children: [
                CircleAvatar(
                  backgroundColor:currentScreenIndex==3? Colors.red:Colors.transparent,
                  child: Icon(Icons.person,color: currentScreenIndex==3?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
                ),
               
                Text("Profile",style:
                GoogleFonts.poppins(textStyle: 
                 TextStyle(color: currentScreenIndex==3?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)
                  ),),
                )
              ],
             ),
             label: ""
            ),
           
            ],
          
            currentIndex: currentScreenIndex,
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Color.fromARGB(88, 179, 49, 49),
            onTap:(index){
              print(index);
              pro.onitemtapped(index);
            }
            ),
       );
  }
}
          
        
    
    


   