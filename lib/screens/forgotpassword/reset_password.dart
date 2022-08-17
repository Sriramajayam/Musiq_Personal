import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';
class ResetPassword extends StatelessWidget {
   ResetPassword({Key? key}) : super(key: key);
  final TextEditingController _newPassWord=TextEditingController();
  final TextEditingController _conformPassWord=TextEditingController();

  @override
  Widget build(BuildContext context) {
  var pro=Provider.of<LoginProvider>(context);
    return Scaffold(
      backgroundColor: color1,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16,left: 16,top: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,color: color2,)),
                  SizedBox(width: 20,),
                  Text("Reset password",style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 20,fontWeight:
                     FontWeight.w600,color: color2)
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Text("Please enter your new password",style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 14,fontWeight:
                     FontWeight.w400,color: color2)
                  ),),
              SizedBox(height: 24,),
        
                ResetTextfield(
                  onTap: (){
                  pro.inText();
            
                  },
                text: "New password",
                 onChanged: ((value) {
                  RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (!regex.hasMatch(value)) {
                     
                    }
                
                 }),
                  validator: ((value) {
                    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if(value==null||value.isEmpty){
                        return "The password must contain atleast 8 characters";
                    }if (!regex.hasMatch(value)) {
                       return "Please enter a valid email";
                    }if (!regex.hasMatch(value)) {
                  //  pro.innText();
                      
                    }
      }),
                   obsecure: false, 
                   suffix: Text(""),),
              
              
              SizedBox(height: 10),
                    pro.isNotText==true?
                   Container(
                    height: 80,
                    width: double.maxFinite,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(255, 255, 255, 0.05)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.info,color: color3,),
                            SizedBox(width: 10,),
                            Text("""The password must contain alteast 8 characters,
include 1 uppercase, 1 lowercase,1 number and
1 special character.""",style: GoogleFonts.poppins( 
          textStyle: TextStyle(
            color: color3,fontSize: 10,fontWeight: FontWeight.w400
          )
        ),
        
        ),
                          ],
                        ),
                      ),
                    ),
                   ):SizedBox(), 
                    ResetTextfield(
                  onTap: (){
                  pro.inText();
                  },
                text: "Confirm password",
                 onChanged: ((value) {

                 }),
                  validator: ((value) {

                  }),
                   obsecure: false, 
                   suffix: Text(""),), 
               
              SizedBox(height: 154,),
        
                  ContainerButton(text: "Reset")
            ],
          ),
        ),
      ),
    ),
    );
  }
}