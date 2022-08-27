import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/new_account_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/provider/register_provider.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';
class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
  
    var pro=Provider.of<RegisterProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color1,
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(right: 16,left: 16),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      CustomeTextfield(onTap: () {
                        
                      },
                       text: "Full Name", 
                       onChanged: (value) {
                         pro.fullNameError(value);
                       }, 
                       obsecure: false, 
                       suffix: Text("")),
                  Text(pro.fullname.error,style: TextStyle(color: Colors.red),),
                 CustomeTextfield(onTap: () {
                        
                      },
                       text: "Email Address", 
                       onChanged: (value) {
                     pro.emailAddressError(value);
                       }, 
                       obsecure: false, 
                       suffix: Text("")),
                  Text(pro.emailAdress.error,style: TextStyle(color: Colors.red),),
                 CustomeTextfield(onTap: () {
                        
                          },
                       text: "Username", 
                       onChanged: (value) {
                         pro.userNameError(value);
                       }, 
                       obsecure: false, 
                       suffix: Text("")),
           
                     CustomeTextfield(onTap: () {
                        
                      },
                       text: "Password", 
                       onChanged: (value) {
                         pro.passWordError(value);
                       
                       }, 
                       obsecure: false, 
                       suffix: Text("")),
                       Text(pro.password.error,style: TextStyle(color: Colors.red),),
          
                 CustomeTextfield(onTap: () {
                        
                      },
                       text: "Confirm Password", 
                       onChanged: (value) {
                         pro.confirmPassWordError(value);
                      
                       }, 
                       obsecure: false, 
                       suffix: Text("")),
                       Text(pro.confirmPassword.error,style: TextStyle(color: Colors.red),),
                        SizedBox(height:16 ,),
                       ContainerButton(text: "Create account"),
              
               ],
           ),
         ),
       ),
      ),
    );
  }
}