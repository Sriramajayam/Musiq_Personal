import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/provider/forgot_passsword_provider.dart';
import 'package:loginproviderproject/screens/forgotpassword/otp_screen.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

@override

  @override
  Widget build(BuildContext context) {
    final pro=Provider.of<ForgotPasswordProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
  
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
                   pro.forgotEmail.value.isEmpty;
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
                 CustomeTextfield(onTap: (){},
                  text: "Email Address", 
                  onChanged: (value){
                    pro.emailError(value);
                  },
                   obsecure: false,
                    suffix: Text("")),
                    Text(pro.forgotEmail.error,style: TextStyle(color: Colors.red),),
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