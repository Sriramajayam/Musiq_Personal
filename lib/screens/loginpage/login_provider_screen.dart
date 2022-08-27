import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/login_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:http/http.dart' as http;
import 'package:loginproviderproject/screens/forgotpassword/forgot_password.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';

import 'package:loginproviderproject/widgets/login_page_textfield.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginProviderUI extends StatefulWidget {
  LoginProviderUI({
    Key? key,
    required this.context,
  }) : super(key: key);
  final BuildContext context;

  @override
  State<LoginProviderUI> createState() => _LoginProviderUIState();
}

class _LoginProviderUIState extends State<LoginProviderUI> {


  final _formkey = GlobalKey<FormState>();


 
   
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<LogInProvider>(context);
    void initState(){
super.initState();
Provider.of<LogInProvider>(context).getvalues();
}

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height);

    return Scaffold(
        backgroundColor: color1,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: height * 0.240, left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Image.asset(
                                            "assets/images/login_logo.png",
                                            height: 70,
                                            width: 70,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.020),
                                            child: Text(
                                              "Welcome Back",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                            CrossAxisAlignment.start,
                                        children: [
                                        CustomeTextfield(onTap: (){

                                        },
                                        //  controller:_emailController ,
                                          text: "Email Address", 
                                          onChanged: (value) {
                                            pro.changeEmail(value);
                                          },
                                           obsecure: false,
                                            suffix: Text("")),
                                            Text(pro.email.error,style: TextStyle(color: Colors.red),),
                                         
                                          
                                         CustomeTextfield(onTap: (){
                                          pro.passwordTap();
                                        },
                                          text: "Password", 
                                          onChanged: (value) {
                                            pro.Changepassword(value);  
                                          },
                                           obsecure: false,
                                            suffix: Text("")),
                                            Text(pro.password.error,style: TextStyle(color: Colors.red),),
                                             Align(
                                            alignment: Alignment.topRight,
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                                ForgotPassword()));
                                              },
                                              child: Text(
                                                "Forgot Password ?",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          ),

                                          SizedBox(
                                            height: height * 0.100,
                                          ),
                                          InkWell(
                                            onTap: ()async{
                                              print("ram");
                                              //  pro.saveDetails();
                                              pro.PostApi(context);
                                         
                                            },
                                            child: ContainerButton(text: "Log in")),
                                         
                                        
                   
                                          
                                          Spacer(),
                                        
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
        );
  }
}