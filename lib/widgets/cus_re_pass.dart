import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:provider/provider.dart';
class CusResetTextfield extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onTap;
  final Widget suffix;
  final String text;
    final bool obsecure;
  //  final FormFieldValidator<String> validator;
   CusResetTextfield({Key? key, 
   required this.onTap,
   required this.controller,
   required this.text,
    required this.onChanged,
    //  required this.validator,
     required this.obsecure,
     required this.suffix, }) : super(key: key);

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

        Container(
         height: 45,
         width: double.maxFinite,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(255, 255, 255, 0.1)
         ),
          child: TextFormField(
            controller:controller ,
            onTap: onTap,
            obscureText: obsecure,
          onChanged: onChanged,
          // keyboardType: TextInputType.text,
          autovalidateMode:AutovalidateMode.onUserInteraction,
          // validator:validator,
          style: TextStyle(color: color2),
   decoration: InputDecoration(
  border: InputBorder.none,
  errorBorder: OutlineInputBorder(
    borderSide: new BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(15),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(15),
  ),
       suffixIcon: suffix, 
contentPadding: EdgeInsets.only(top: 10,bottom: 0,left: 10), 

focusColor: color2 ,
 focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(15)
),
),
          ),
        ),
      ],
    );
  }
}