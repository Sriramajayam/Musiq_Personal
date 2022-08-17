import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
class ResetTextfield extends StatelessWidget {
  // final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onTap;
  final Widget suffix;
  final String text;
    final bool obsecure;
   final FormFieldValidator<String> validator;
   ResetTextfield({Key? key, 
   required this.onTap,
  //  required this.controller,
   required this.text,
    required this.onChanged,
     required this.validator,
     required this.obsecure,
     required this.suffix,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isenable=true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(
          fontWeight: FontWeight.w500,fontSize: 14,color: color2
        )),),
            SizedBox(height: 08,),

        TextFormField(
          onTap: onTap,
          obscureText: obsecure,
        onChanged: onChanged,
        autovalidateMode:AutovalidateMode.onUserInteraction,
        validator:validator,
        style: TextStyle(color: color2),
   decoration: InputDecoration(
  errorBorder: OutlineInputBorder(
    borderSide: new BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(15),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    
  ),
       suffixIcon: suffix,      
 border: OutlineInputBorder(   
   
 borderSide: BorderSide(color: color1),
  borderRadius: BorderRadius.circular(15),
   ) ,
contentPadding: EdgeInsets.only(top: 0,bottom: 0,left: 10), 
fillColor: Color.fromRGBO(255, 255, 255, 0.1),
filled: true ,
focusColor: color2 ,
 focusedBorder: OutlineInputBorder(
  
borderRadius: BorderRadius.circular(15)
),
),
        ),
      ],
    );
  }
}