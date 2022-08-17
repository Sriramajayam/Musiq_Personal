import 'package:flutter/material.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
class Logintextfield extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final Widget suffix;
  
    final bool obsecure;
   final FormFieldValidator<String> validator;
   Logintextfield({Key? key, 
   required this.controller,
    required this.onChanged,
     required this.validator,
     required this.obsecure,
     required this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isenable=true;
    return TextFormField(
      obscureText: obsecure,
    onChanged: onChanged,
    controller:controller,
    autovalidateMode:AutovalidateMode.onUserInteraction,
    validator:validator,
    style: TextStyle(color: color2),
   decoration: InputDecoration(
    
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
    );
  }
}