import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:http/http.dart' as http;
import 'package:loginproviderproject/screens/loginpage/login_page.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
import 'package:loginproviderproject/screens/registerscreen/register_cus_screen.dart';
import 'package:loginproviderproject/screens/registerscreen/register_screen.dart';
// import 'package:loginproviderproject/screens/signuppage.dart';
import 'package:loginproviderproject/widgets/login_page_textfield.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({
    Key? key,
   
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
 

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);

    return Scaffold(
        backgroundColor: color1,
        body: SingleChildScrollView(
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/login_bac_image.jpg",
                                width: width,
                                fit: BoxFit.cover,
                                height: height,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: height * 0.50,
                                  width: width * width,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                        Colors.transparent,
                                        color1
                                      ])),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Spacer(),
                                    Image.asset("assets/images/splashlogo.png",height: height*0.150,)
                                     
                                    ],
                                  ),
                                ),
                                Container(
                                  color: color1,
                                  height: height * 0.50,
                                  width: width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                   SizedBox(height: height*0.100,),

                                   Text("Queue your favourite music",style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.w500,color: color2
                                    )
                                   ),),
                                   SizedBox(height: height*0.016,),
                                   Text("""All your latest songs and podacsts
                      in one palce""",style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: color5
                                    )
                                   ),),
                                   SizedBox(height: height*0.122,),

                                                    InkWell(
                                                      onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                                                      },
                                          child: Container(
                                            height: height * 0.072,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15),
                                                color: Color.fromRGBO(
                                                    254, 86, 49, 1)),
                                            child: Center(
                                              child: Text("Register",style: GoogleFonts.poppins(
                                              textStyle: TextStyle(color: color2,fontSize: 16,fontWeight: FontWeight.w500)
                                              ),),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: height*0.016),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Already have an account?",style: GoogleFonts.poppins(
                                              textStyle: TextStyle(color: color2,fontSize: 14,fontWeight: FontWeight.w500)
                                              )),
                                                InkWell(
                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginUI(context: context)));
                                                  },
                                                  child: Text("Log in",style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(color:Color.fromRGBO(254, 86, 49, 1)),fontSize: 14,fontWeight: FontWeight.w500)
                                           ),
                                                ),
                                          ],
                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                           ]
                                        ),
                                      ],
                                    ),
                                       ]
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
                  );
                 }
               }