import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
// import 'package:loginproviderproject/screens/forgotpassword/cus_reset_password.dart';
import 'package:loginproviderproject/screens/forgotpassword/reset_password.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';
import 'package:loginproviderproject/widgets/otp_container.dart';
class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController OtpController=TextEditingController();
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: color1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16,left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height*0.032 ,),
              Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Icon(Icons.arrow_back_ios,color: color2,)),
                  Text("Enter OTP",style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ,color: color2)
                ),)
                ],
              ),
              SizedBox(height:height*0.016 ,),
              Text("""An OTP has been sent to example@gmail.com.
Please enter the OTP below""",style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400 ,color: color2)
                ),),
              SizedBox(height:height*0.032 ,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
  OtpContainer(
      onTap: (() {
                    
                  }),
              validator: ((value) {
        
              }), 
              onChanged: ((value) { 
    if(value.length==1){
      FocusScope.of(context).nextFocus();
    }else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    }
              }), ),
                OtpContainer(
                  onTap: (() {
                    
                  }),
              validator: ((value) {}), 
              
              onChanged: ((value) {
 if(value.length==1){
      FocusScope.of(context).nextFocus();
    }else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    }
               }), ),
                OtpContainer(
                    onTap: (() {
                    
                  }),
              validator: ((value) {}), 
              onChanged: ((value) { if(value.length==1){
      FocusScope.of(context).nextFocus();
    }else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    }
     }),
     ),
                OtpContainer(
                    onTap: (() {
                    
                  }),
              validator: ((value) {}), 
              onChanged: ((value) { if(value.length==1){
      FocusScope.of(context).nextFocus();
    }else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    }
     }), ), 
               OtpContainer(
                  onTap: (() {
                    
                  }),
              validator: ((value) {}), 
              onChanged: ((value) { if(value.length==1){
      FocusScope.of(context).nextFocus();
    }
    else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    } }), ),
                OtpContainer( 
                    onTap: (() {
                    
                  }),
              validator: ((value) {}), 
              onChanged: ((value) {  if(value.length==1){
      FocusScope.of(context).nextFocus();
    }else if(value.length==0){
      FocusScope.of(context).previousFocus();
  
    }
    
    
    }), ),
                ],
              ),
              SizedBox(height: 16,),
              Align(
              alignment: Alignment.topRight,
                child: Text("Resend OTP",style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 12,fontWeight:
                     FontWeight.w600 ,color: color2),
                  ),),
              ),

              SizedBox(height:height*0.152 ,),
        InkWell(
          onTap: (() {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword())) ;   
                  }),
          child: ContainerButton(text: "Continue"))
            
            ],
          ),
        ),
      ),
    );
  }
}