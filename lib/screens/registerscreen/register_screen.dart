import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/new_account_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';
class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  TextEditingController _fullNamee=TextEditingController();
    TextEditingController _emailAddress=TextEditingController();
    TextEditingController _userName=TextEditingController();
    TextEditingController _password=TextEditingController();
    TextEditingController _conformPassWord=TextEditingController();
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
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                   CusResetTextfield(
                  controller: _fullNamee,
                  onTap: (){
                    
                  },
                  text:"Full Name",
                  onChanged: ((value) {
                  if(value==null||value.isEmpty){
                  pro.isFullFieldReqired(true);
                  }else if(_fullNamee.text.isNotEmpty){
                  pro.isFullFieldReqired(false);

                  }
                  
                  print(value);
                  }
                  ),
                  obsecure: false, 
                  suffix: Text(""),),
                 
                  SizedBox(height: height*0.008,),
                  pro.FullNameField==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox()
                         ],
                       ),
                        SizedBox(height: height*0.016,),

                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CusResetTextfield(
                            controller: _emailAddress,
                  onTap: (){
               
                  },
                text: "Email Address",
                 onChanged: ((value) {
                  if(value.isEmpty){
                    pro.isEmailAddressFieldReqired(true);
                    pro.isvalidEmail(false);

                  }else if(value.isNotEmpty){
                  pro.isEmailAddressFieldReqired(false);
                  }
                  
                  
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(_emailAddress.text)) {
                     pro.isvalidEmail(true);
                  }if(_emailAddress.text.length<0){
                   

                  } 
                 }),
                  
                       obsecure: false, 
                       suffix: Text(""),
                       ),
                        pro.EmailAddress==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox(),
                   pro.ValidEmail==true?Text("Invalid Email Format",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox(),
                     ],
                   ),
                        SizedBox(height: height*0.016,),

                         Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             CusResetTextfield(
                        controller: _userName,

                  onTap: (){
                 
                  },
                text: "Username",
                 onChanged: ((value) {
                if(value.isEmpty){
                    pro.isUsernameFieldReqired(true);
                  }if(value.isNotEmpty){
                    pro.isUsernameFieldReqired(false);
                  }
                 }),
                 
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                   pro.Username==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox(),
                    
                           ],
                         ),
                        SizedBox(height: height*0.016,),

                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CusResetTextfield(
                            controller: _password,

                  onTap: (){
               
            
                  },
                text: "Password",
                 onChanged: ((value) {
                   if(value.isEmpty){
                    pro.isPasswordFieldReqired(true);
                  }if(value.isNotEmpty){
                    pro.isPasswordFieldReqired(false);
                  }
                 }),
                  
                       obsecure: false, 
                       suffix: Text(""),
                       ),
                        SizedBox(height: height*0.008,),

                  pro.Password==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox(),
                        SizedBox(height: height*0.016,),
                       
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
                   ),
                     ]
                   ),
                        
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             CusResetTextfield(
                        controller:_conformPassWord,

                  onTap: (){
                  
                  },
                text: "Confirm Password",
                 onChanged: ((value) {
                   if(value.isEmpty){
                    pro.isConfirmPasswordFieldReqired(true);
                  }if(value.isNotEmpty){
                    pro.isConfirmPasswordFieldReqired(false);
                  }
                 }),
                
                   obsecure: false, 
                   suffix: Text(""),
                   ),
                   pro.ConfirmPassword==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox(),
                           ],
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