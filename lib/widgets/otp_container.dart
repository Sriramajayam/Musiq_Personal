import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginproviderproject/constants/cons_file.dart';
class OtpContainer extends StatelessWidget {
  const OtpContainer({Key? key,  required this.validator, 
  required this.onChanged, required this.onTap}) : super(key: key);
// final TextEditingController controller;
   final FormFieldValidator<String> validator;
  final ValueChanged<String> onChanged;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
    height: 46,
    width: 46,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color.fromRGBO(255, 255, 255, 0.1),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left:18),
      child: TextFormField(
        style: TextStyle(color: color2),
        keyboardType: TextInputType.number,
        inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: InputBorder.none
        ),
        validator: validator,
        onChanged: onChanged,
       
      
      ),
    ),
    );
  }
}