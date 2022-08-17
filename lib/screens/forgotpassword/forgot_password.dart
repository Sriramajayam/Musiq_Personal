import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/screens/forgotpassword/otp_screen.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController _forgotController=TextEditingController();
    return
    Scaffold(
      backgroundColor: color1,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 16,left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                
             Row(
              children: [
                InkWell(
                  onTap: (){
                      Navigator.pop(context);

                  },
                  
                  child: Icon(Icons.arrow_back_ios,color: color2,)),
                SizedBox(width: 20,),
                Text("Forgot password",style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ,color: color2)
                ),)
              ],
             ),
             SizedBox(height:height* 0.012,),
             Text("""Please enter your email address linked 
with your account. We will send an OTP to
your mail.""",style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600 ,color: color2),)),
                  SizedBox(height: height*0.032,),
                  ResetTextfield(
                  onTap: (){},
                   text: "Email address",
                    onChanged: ((value) {
                      
                    }), 
                    validator: ((value) {
                     if(value==null||value.isEmpty){
                           return "Field is Required";
                     }  if (!RegExp(r'\S+@\S+\.\S+')
                                                  .hasMatch(value)) {
                                                return "Please enter a valid email address";
                                              }
                    }), 
                    obsecure: false,
                     suffix: Text("")),
                     SizedBox(height: height*0.100,),
                     InkWell(
                      onTap: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()));
                      }),
                      child: ContainerButton(text: "Continue"))
              ], 
            ),
          ),
        ),
      ) ,
      
    );
  }
}