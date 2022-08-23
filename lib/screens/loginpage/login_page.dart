import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:http/http.dart' as http;
import 'package:loginproviderproject/screens/forgotpassword/forgot_password.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
// import 'package:loginproviderproject/screens/signuppage.dart';
import 'package:loginproviderproject/widgets/login_page_textfield.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginUI extends StatelessWidget {
  LoginUI({
    Key? key,
    required this.context,
  }) : super(key: key);
  final BuildContext context;

  static final CREATE_POST_URL =
      "https://api-musiq.applogiq.org/api/v1/users/login";
  final _storage = FlutterSecureStorage();
  Future<void> _readFromStorage() async {
    _emailController.text = await _storage.read(key: "email") ?? "";
    _passwordController.text = await _storage.read(key: "password") ?? "";
  }

  Future<void> _readFroStorage() async {
    _emailController.text = await _storage.read(key: "email") ?? "";
    _passwordController.text = await _storage.read(key: "password") ?? "";
  }

  final _emailController = TextEditingController(text: "");
  final _passwordController = TextEditingController(text: "");
  final _formkey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isGreenLoading = false;
  bool isRedLoading = false;
  bool savedpassword = true;
  checkLogged() async {
    var isLoad = await _storage.read(key: "isLogged") ?? "false";
    if (isLoad == "true") {
      //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SigninPage()));

    }
  }

  @override
   
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<LoginProvider>(context);
    bool isGreenLoading = Provider.of<LoginProvider>(context).isGreenLoading;
    bool isRedLoading = Provider.of<LoginProvider>(context).isRedLoading;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);

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
                                          Text(
                                            "Email Address",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Logintextfield(
                                            obsecure: false,
                                            controller: _emailController,
                                            suffix: Text(""),
                                            onChanged: ((value) {}),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Field is Required";
                                              }
                                              if (!RegExp(r'\S+@\S+\.\S+')
                                                  .hasMatch(value)) {
                                                return "Please enter a valid email address";
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Text(
                                            "Password",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Logintextfield(
                                            obsecure: !pro.PasswordVisible,
                                            suffix: IconButton(
                                                onPressed: () {
                                                  Provider.of<LoginProvider>(
                                                          context,
                                                          listen: false)
                                                      .notPasswordVisible();
                                                },
                                                icon: Icon(
                                                  pro.PasswordVisible
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color: color2,
                                                )),
                                            controller: _passwordController,
                                            onChanged: ((value) {}),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Field is Required";
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: height * 0.005,
                                          ),
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
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: height * 0.016),
               child: pro.isGreenLoading==true||pro.isRedLoading==true?
                                             Container(
                                                    height: height * 0.065,
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                              color:  pro.isRedLoading == false
                       ?  Color.fromRGBO( 96, 20, 20, 1):Color.fromRGBO(  28, 58, 23, 1) ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16,
                                                              left: 16),
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.info,
                                    color:pro.isRedLoading == false?Color .fromRGBO(234,41,41,1):
                                                               Color  .fromRGBO(40, 159, 21, 1)),
                                                          SizedBox(
                                                            width:
                                                                width * 0.008,
                                                          ),
                                                          Text(
                                     pro.isRedLoading==false? 
                                                             "Your email or password is Incorrect":"Login Sucess",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight .w400,
                                                                    color: Color .fromRGBO(255,255,255,0.75))),
                                                          ),
                                                          Spacer(),
                                                          InkWell(
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Color
                                                                    .fromRGBO(255,255,255,0.6),
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : Text(""),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: height * 0.030),
                                            child: InkWell(
                                              onTap: () async {
                                                print("ram");
                                                print(await http.post(Uri.parse(
                                                    "https://api-musiq.applogiq.org/api/v1/users/login")));
                                                print("rsesrsd");
                                                var response = await http.post(
                                                    Uri.parse(
                                                        "https://api-musiq.applogiq.org/api/v1/users/login"),
                                                    headers: {
                                                      "Content-Type":
                                                          "application/json"
                                                    },
                                                    body: jsonEncode({
                                                      "email":
                                                          _emailController.text,
                                                      "password":
                                                          _passwordController
                                                              .text,
                                                    }));
                                                print(response.statusCode);
                                                if (response.statusCode==200) {
                                                  pro.isnotRedLoading();
                                                     
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              signuppage(context: context,)));
                                                } 
                                                else if (response
                                                        .statusCode!=200) {
                                                  pro.isnotGreenLoading();

                                                }
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
                                                  child: isLoading
                                                      ? CircularProgressIndicator(
                                                          color: color2,
                                                        )
                                                      : Text(
                                                          "Log In",
                                                          style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  color: color2,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                        ),
                                                ),
                                              ),
                                            ),
                                          ),
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
