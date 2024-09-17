import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../view/auth_views/signup_view/signup_view.dart';

class InkwellRow extends StatelessWidget {
  VoidCallback? ontap;
  String txt;
  String txt1;
   InkwellRow({super.key,this.ontap,required this.txt,required this.txt1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Text(txt,style: GoogleFonts.roboto(),),
          SizedBox(width: 5,),
          InkWell(
            onTap: ontap??null,
              // onTap: (){
              //   Navigator.push(context,CupertinoPageRoute(builder:(context)=>SignUpView()));
              // },
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(txt1,style: GoogleFonts.roboto(color: AppColors.orangeColor),),
              ))
        ],
      ),
    );
  }
}
