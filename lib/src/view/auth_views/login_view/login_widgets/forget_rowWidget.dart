import 'package:cookpad/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../forget_view/forget_pasword.dart';
class ForgetRowwidget extends StatelessWidget {

  const ForgetRowwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

          InkWell(
              onTap: (){
                Navigator.push(context,CupertinoPageRoute(builder:(context)=>ForgetPasword()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text('   Forget Pasword?',style: GoogleFonts.roboto(color: AppColors.orangeColor),),
              ))
        ],

    );
  }
}
