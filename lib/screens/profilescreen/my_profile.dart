
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loginproviderproject/main.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:provider/provider.dart';
import 'profile_edit_provider.dart';


class MyProfilePages extends StatefulWidget {
  const MyProfilePages ({Key? key}) : super(key: key);
  @override
  State<MyProfilePages> createState() => _MyProfilePagesState();
}
class _MyProfilePagesState extends State<MyProfilePages> {

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<LoginProvider>(context);

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    
    return  Scaffold(
        backgroundColor:Color.fromRGBO(22, 21, 28, 1),
        body: SafeArea(child: 
       SingleChildScrollView(
         child: Container(
          height: MediaQuery.of(context).size.height,
           child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: height*0.012,right: width*0.016),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                 
                        }, 
                        icon: Icon(Icons.arrow_back_ios_new_sharp,
                        size: 18,
                        color: Color.fromRGBO(255, 255, 255, 1),)
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: width*0.022),
                          child: Text("My Profile",style: 
                          GoogleFonts.poppins(
                            textStyle:TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w600,fontSize: 20
                            ) 
                          )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height*0.025),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 61,
                     
                         backgroundImage:   pro==null?null:FileImage(pro.ram!)
                         
                        ),
                    
                        
                        Padding(
                          padding:  EdgeInsets.only(top: height*0.090,left: width*0.240),
                          child: Positioned(
                            child: 
                        GestureDetector(
                          onTap: () {
                           showModalBottomSheet(
                          
                           backgroundColor: Colors.transparent,
                            context: context,
                            isDismissible: false,
                           
                            
         
                           builder:(BuildContext context)
                           {
                            
                            return  Container(
           
           height: 250,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
             topRight: Radius.circular(25)),
             color: Color.fromRGBO(33, 33, 44, 1),
           ),
           child: Column(
             children: [
               Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Row(
              children:[
         Text("Profile photo",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1,),
                  fontWeight: FontWeight.w500,fontSize: 15
              )
            ),),
            Spacer(),
            IconButton(onPressed: (){
             
              Navigator.pop(context);
                    }, 
              icon:Icon(Icons.close_rounded,color:
            Color.fromRGBO(255, 255, 255, 1),),
                             ) ,
              ]
          ),
               ),
               Divider(
          thickness: 1,
          height: 0,
         
          color: Color.fromRGBO(255, 255, 255, 0.1),),
           ListTile(
                 leading: Icon(Icons.photo_camera,
                 color: Color.fromRGBO(255, 255, 255, 0.7),
                 size: 24,),
                title:InkWell(
                  onTap:(){
                    print("1");
                  pro.pickImage(ImageSource.camera);

                         
                 
                  },
                 
                
                 
                  
                  child: Text("Open camera",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,color:
                       Color.fromRGBO(255, 255, 255, 1)
                    )
                  ) ,
                               ),
                )
               ),
                InkWell(
                  onTap: (() {
                   pro. pickImage(ImageSource.gallery);
                 
         
                  }),
                  child: ListTile(
                   leading: Icon(Icons.image,
                   color: Color.fromRGBO(255, 255, 255, 0.7),
                   size: 25,),
                  title:Text("Choose from gallery",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,color:
                       Color.fromRGBO(255, 255, 255, 1)
                    )
                  ) ,
                               )
                               ),
                ),
                InkWell(
                  onTap: (() {
                    
         
                  
            
                   setState(() {
          Navigator.pop(context);
            
          });  
                  }),
                  child: ListTile(
                   leading: Icon(Icons.delete,
                   color: Color.fromRGBO(255, 255, 255, 0.7),
                   size: 25,),
                  title:Text("Delete picture",
                  style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,color:
                       Color.fromRGBO(255, 255, 255, 1),
                    )
                  ) ,
                               )
                               ),
                ),
             ],
           ),
             
         
         );
              
                           }
                           
         
                           );
                         
                          },
                          child: Stack(
                            children: [
                             
         
                            
                            Container(
                                   height: 45,
                                   width: 45,
                                   decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                     color: Colors.white,
                                     
                                   ),
                              
                                
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:2.5,top: 2.5),
                                   child: Container(
                                height: 40,
                                width: 40,
                        
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                color: Colors.black),
                                child: Icon(Icons.edit,color: Colors.white),
         
                              ),
                              
                                 ),
         
                            ]
                          ),
                        ),
                           ),
                        ),
                      ],
                    ),
                    
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                    padding: const EdgeInsets.only(top: 33,left: 16),
                    child: Text("Name",style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                      ),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12,left: 12,top: 5),
                    child: TextField( decoration: InputDecoration(
                      focusedBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)),
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)),
                          fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                          filled: true,
                             contentPadding: EdgeInsets.only(top: 0,bottom: 0,left: 10), 
                          focusColor: Colors.transparent
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height*0.016,left: width*0.050),
                    child: Text("Username",style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                      ),
                    ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 5,left: width*0.032,right: width*0.032),
                    child: TextField(
                      
               decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                filled: true,
                   contentPadding: EdgeInsets.only(left: 10), 
               ),
                    ),
                  ),
                  
                  
                    ],
                  ),
                  Spacer(),
                 Padding(
                  padding:  EdgeInsets.only(right: width*0.032,
                  left: width*0.032,bottom: height*0.090 ),
                  child: Container(
                   height: 50,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color.fromRGBO(254, 86, 49, 1),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 11,
                     bottom: 11,left: 150,),
                     child: Text("Save",style: 
                     GoogleFonts.poppins(textStyle: 
                      TextStyle(color:
                       Color.fromRGBO(255,255,255,1),
                       fontSize: 16,fontWeight: FontWeight.w500
                       ),),)
                   ),
                  ),         
                        ),
                ],
              ),
         ),
       ),
        )
        );
  }
}


