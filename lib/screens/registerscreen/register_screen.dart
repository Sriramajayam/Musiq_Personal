import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<LoginProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color1,
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(right: 16,left: 16),
           child: Column(
               children: [
                  SizedBox(height: height*0.032,),
                     Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: color2,)),
                        SizedBox(width: 20,),
                        Text("New Account",style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 24,fontWeight:
                           FontWeight.w600,color: color2)
                        ),),
                      ],
                    ),
                        SizedBox(height: height*0.032,),
                       ResetTextfield(
                  onTap: (){
                
                  },
                text: "Full Name",
                 onChanged: ((value) {
                 }),
                  validator: ((value) {
                    
                  }),
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                        SizedBox(height: height*0.016,),

                   ResetTextfield(
                  onTap: (){
               
                  },
                text: "Email Address",
                 onChanged: ((value) {
                 }),
                  validator: ((value) {
                    
                  }),
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                        SizedBox(height: height*0.016,),

                         ResetTextfield(
                  onTap: (){
                 
                  },
                text: "Username",
                 onChanged: ((value) {
                 }),
                  validator: ((value) {
                    
                  }),
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                        SizedBox(height: height*0.016,),

                   ResetTextfield(
                  onTap: (){
                  pro.inText();
                  },
                text: "Password",
                 onChanged: ((value) {
                 }),
                  validator: ((value) {
                    
                  }),
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                        SizedBox(height: height*0.016,),
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
                  
                  },
                text: "Confirm Password",
                 onChanged: ((value) {
                 }),
                  validator: ((value) {
                    
                  }),
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                   SizedBox(height: height*0.150,),
                   ContainerButton(text: "Create account")

                   
                  
               
               ],
           ),
         ),
       ),
      ),
    );
  }
}