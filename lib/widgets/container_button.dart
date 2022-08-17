import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/cons_file.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width:double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(254, 86, 49, 1),
     
      ),
      child: Center(
        child: Text(text,style: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: color2)
        ),),
      ),
    );
  }
}