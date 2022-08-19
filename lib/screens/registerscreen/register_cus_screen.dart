import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginproviderproject/constants/contant_color.dart';
import 'package:loginproviderproject/provider/new_account_provider.dart';
import 'package:loginproviderproject/provider/providers.dart';
import 'package:loginproviderproject/widgets/container_button.dart';
import 'package:loginproviderproject/widgets/cus_re_pass.dart';
import 'package:loginproviderproject/widgets/reset_password_widget.dart';
import 'package:provider/provider.dart';

class registerscreen extends StatelessWidget {
  const registerscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<RegisterProvider>(context);
    TextEditingController _emailAddress=TextEditingController();

    return Scaffold(
      backgroundColor: color1 ,
      body:SafeArea(child: 
      Column(
        children: [
          SizedBox(height: 300,),
//           CusResetTextfield(
//             onTap: (){

//             },
//              controller: _emailAddress,
//               text: "Email Address",
//                onChanged: (value){
// if(value.isEmpty){
//   pro.isFullFieldReqired(true);
// }else{
//   pro.isFullFieldReqired(false);

// }
//                },
//                obsecure: false, 
//                suffix: Text(""),
               
//                ), 
TextField(
onChanged: (value){
  if(value.isEmpty){
    pro.isFullFieldReqired(true);
  }else{
    pro.isFullFieldReqired(false);

  }
},
),

                pro.FullNameField==true?Text("Field is Required",style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color.fromRGBO(234, 41, 41, 1),fontSize: 12,fontWeight: FontWeight.w500)
                   ),):SizedBox()
        ],
      )) ,
    );
  }
}